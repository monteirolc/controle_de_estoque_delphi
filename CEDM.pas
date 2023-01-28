unit CEDM;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet,
  IBX.IBSQL, Vcl.Dialogs;

type
  TdtmCE = class(TDataModule)
    idbCE: TIBDatabase;
    itrCE: TIBTransaction;
    idsCliente: TIBDataSet;
    dtsCliente: TDataSource;
    idsFornecedor: TIBDataSet;
    dtsFornecedor: TDataSource;
    idsProduto: TIBDataSet;
    dtsProduto: TDataSource;
    idsPedidoVenda: TIBDataSet;
    dtsPedidoVenda: TDataSource;
    idsItemPV: TIBDataSet;
    dtsItemPV: TDataSource;
    idsPedidoCompra: TIBDataSet;
    dtsPedidoCompra: TDataSource;
    idsItemPC: TIBDataSet;
    dtsItemPC: TDataSource;
    idsClienteCHAVECLI: TIntegerField;
    idsClienteNOME: TIBStringField;
    idsClienteENDERECO: TIBStringField;
    idsClienteBAIRRO: TIBStringField;
    idsClienteCIDADE: TIBStringField;
    idsClienteUF: TIBStringField;
    idsClienteCEP: TIBStringField;
    idsClienteTIPOFISCAL: TIBStringField;
    idsClienteCPFCNPJ: TIBStringField;
    idsFornecedorCHAVEFOR: TIntegerField;
    idsFornecedorNOME: TIBStringField;
    idsFornecedorENDERECO: TIBStringField;
    idsFornecedorBAIRRO: TIBStringField;
    idsFornecedorCIDADE: TIBStringField;
    idsFornecedorUF: TIBStringField;
    idsFornecedorCEP: TIBStringField;
    idsFornecedorTIPOFISCAL: TIBStringField;
    idsFornecedorCPFCNPJ: TIBStringField;
    idsProdutoCHAVEPRO: TIntegerField;
    idsProdutoNOME: TIBStringField;
    idsProdutoESTOQUE: TIBBCDField;
    idsProdutoPUC: TFloatField;
    idsProdutoPVN: TFloatField;
    idsProdutoPVP: TFloatField;
    idsPedidoVendaCHAVEPED: TIntegerField;
    idsPedidoVendaCHAVECLI: TIntegerField;
    idsPedidoVendaDATA: TDateField;
    idsPedidoVendaVALORTOTAL: TFloatField;
    idsItemPVNUMITEM: TIntegerField;
    idsItemPVCHAVEPED: TIntegerField;
    idsItemPVCHAVEPRO: TIntegerField;
    idsItemPVQUANTIDADE: TIBBCDField;
    idsItemPVPRECOUNITARIO: TFloatField;
    idsItemPVPRECOTOTAL: TFloatField;
    idsPedidoCompraCHAVEPCP: TLargeintField;
    idsPedidoCompraCHAVEFOR: TIntegerField;
    idsPedidoCompraDATA: TDateField;
    idsPedidoCompraVALORTOTAL: TFloatField;
    idsItemPCNUMITEM: TIntegerField;
    idsItemPCCHAVEPCP: TLargeintField;
    idsItemPCCHAVEPRO: TIntegerField;
    idsItemPCQUANTIDADE: TIBBCDField;
    idsItemPCPRECOUNITARIO: TFloatField;
    idsItemPCPRECOTOTAL: TFloatField;
    itrCom: TIBTransaction;
    isqCom: TIBSQL;
    idsPedidoVendaNOMECLIENTE: TIBStringField;
    idsPedidoVendaBAIRRO: TIBStringField;
    idsPedidoVendaCIDADE: TIBStringField;
    procedure idsPedidoVendaNOMECLIENTEChange(Sender: TField);
    procedure idsPedidoVendaCHAVECLIChange(Sender: TField);
    procedure idsItemPVAfterPost(DataSet: TDataSet);
    procedure idsItemPVChangeCalcTotal(Sender: TField);
  private
    procedure LocalizarClientePorCodigo(const ChaveCli: Integer);
    procedure LocalizarCliente(const Nome: String);
    procedure AtualizaTotalPedido(const ChavePed: Integer);
    procedure UpdatePedido(const ChavePed, Result: String);
  public
    procedure OrdenarProdutosPor(const Campo: String);
    function ObterEstoque(const ChavePro: Integer): Real;
    function PrecoUnitario(const ChavePro: Integer): Real;
    procedure AtualizarEstoque(const Estoque, ValorAtual, NovoValor: Real;
                               const ChavePro: Integer);
    function SomarTotalColuna (const ChavePed: Integer): String;
  end;

var
  dtmCE: TdtmCE;

implementation

{$R *.dfm}

procedure TdtmCE.OrdenarProdutosPor(const Campo: String);
var
  sql: String;
  p: integer;
begin
  sql := Trim(idsProduto.SelectSQL.Text);   // 'select P.* from PRODUTO P where .... '
  p := Pos('order by', sql);

  if p > 0 then
    Delete(sql, p, Length(sql));

  sql := sql + ' order by ' + Campo;  // 'select P.* from PRODUTO P where .... order by PUC'

  idsProduto.DisableControls;
  try
    idsProduto.Close;
    idsProduto.SelectSQL.Text := sql;
    idsProduto.Open;
  finally
    idsProduto.EnableControls;
  end;
end;

procedure TdtmCE.AtualizaTotalPedido(const ChavePed: Integer);
begin
//?!  itrCom.StartTransaction;  Não funciona neste caso por causa do isolamento de transações
  isqCom.Transaction := itrCE;
  try
    isqCom.SQL.Text := 'execute procedure SP_CALCTOTALPEDIDO(:CHAVEPED)';
    isqCom.Params[0].Value := ChavePed;
    try
      isqCom.ExecQuery;
    finally
      isqCom.Close;
    end;
//?!    itrCom.Commit;
  except
    isqCom.Transaction := itrCom;
//?!    itrCom.Rollback;
    raise;
  end;
end;

procedure TdtmCE.idsItemPVAfterPost(DataSet: TDataSet);
begin
  Self.AtualizaTotalPedido(idsItemPVCHAVEPED.Value);
  idsPedidoVenda.Refresh;
end;

procedure TdtmCE.idsItemPVChangeCalcTotal(Sender: TField);
begin
  idsItemPVPRECOTOTAL.Value := idsItemPVQUANTIDADE.Value * idsItemPVPRECOUNITARIO.Value;
end;

procedure TdtmCE.idsPedidoVendaCHAVECLIChange(Sender: TField);
begin
  idsPedidoVendaNOMECLIENTE.OnChange := nil;
  try
    Self.LocalizarClientePorCodigo(idsPedidoVendaCHAVECLI.Value);
  finally
    idsPedidoVendaNOMECLIENTE.OnChange := idsPedidoVendaNOMECLIENTEChange;
  end;
end;

procedure TdtmCE.idsPedidoVendaNOMECLIENTEChange(Sender: TField);
begin
  idsPedidoVendaCHAVECLI.OnChange := nil;
  idsPedidoVendaNOMECLIENTE.OnChange := nil;
  try
    Self.LocalizarCliente(idsPedidoVendaNOMECLIENTE.Value);
  finally
    idsPedidoVendaCHAVECLI.OnChange := idsPedidoVendaCHAVECLIChange;
    idsPedidoVendaNOMECLIENTE.OnChange := idsPedidoVendaNOMECLIENTEChange;
  end;
end;


procedure TdtmCE.LocalizarCliente(const Nome: String);
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'select CHAVECLI, NOME, BAIRRO, CIDADE from CLIENTE '+
                       'where Upper(NOME) like Upper(:NOME)';
    isqCom.Params[0].Value := '%' + Nome + '%';
    isqCom.ExecQuery;
    try
      idsPedidoVendaCHAVECLI.Value := isqCom.Fields[0].Value;
      idsPedidoVendaNOMECLIENTE.Value := isqCom.Fields[1].Value;
      idsPedidoVendaBAIRRO.Value := isqCom.Fields[2].Value;
      idsPedidoVendaCIDADE.Value := isqCom.Fields[3].Value;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;

procedure TdtmCE.LocalizarClientePorCodigo(const ChaveCli: Integer);
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'select NOME, BAIRRO, CIDADE from CLIENTE '+
                       'where CHAVECLI = :CHAVECLI ';
    isqCom.Params[0].Value := ChaveCli;
    isqCom.ExecQuery;
    try
      idsPedidoVendaNOMECLIENTE.Value := isqCom.Fields[0].Value;
      idsPedidoVendaBAIRRO.Value := isqCom.Fields[1].Value;
      idsPedidoVendaCIDADE.Value := isqCom.Fields[2].Value;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;

function TdtmCE.ObterEstoque(const ChavePro: Integer): Real;
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'select ESTOQUE from PRODUTO where CHAVEPRO = :CHAVEPRO';
    isqCom.Params[0].Value := ChavePro;
    isqCom.ExecQuery;
    try
      Result := isqCom.Fields[0].Value;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;
{----------------------------------------------------------------}
function TdtmCE.PrecoUnitario(const ChavePro: Integer): Real;
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'select PVP from PRODUTO where CHAVEPRO = :CHAVEPRO';
    isqCom.Params[0].Value := ChavePro;
    isqCom.ExecQuery;
    try
      Result := isqCom.Fields[0].Value;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;
 {----------------------------------------------------------------}
function TdtmCE.SomarTotalColuna(const ChavePed: Integer): String;
var
  chave: string;
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'select sum(PRECOTOTAL) from ITEMPEDCOMP where CHAVEPCP = :CHAVEPCP';
    isqCom.Params[0].Value := ChavePed;
    isqCom.ExecQuery;
    try
      Result := isqCom.Fields[0].Value;
      chave := IntToStr(ChavePed);
      itrCom.Commit;
    finally
      isqCom.Close;
      UpdatePedido(chave, Result);
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;
{---------------------------------------------------------------}
procedure TdtmCE.UpdatePedido(const ChavePed, Result: String);
begin
  itrCom.StartTransaction;
  try
    isqCom.SQL.Text := 'update PEDIDOCOMPRA P set P.VALORTOTAL = :'
          + Result + 'where P.CHAVEPCP = :' + ChavePed;
    try
      isqCom.ExecQuery;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;
{---------------------------------------------------------------------------}
procedure TdtmCE.AtualizarEstoque(const Estoque, ValorAtual, NovoValor: Real;
  const ChavePro: Integer);
var
 R: Real;
begin
  itrCom.StartTransaction;
  if ValorAtual > NovoValor then
    R := Estoque + (ValorAtual - NovoValor)
  else
    R := Estoque - (NovoValor - ValorAtual);
  try
    isqCom.SQL.Text := 'update PRODUTO P set P.ESTOQUE = '
          + FloatToStr(R) + 'where P.CHAVEPRO = ' + IntToStr(ChavePro);
    try
      isqCom.ExecQuery;
      itrCom.Commit;
    finally
      isqCom.Close;
    end;
  except
    itrCom.Rollback;
    raise;
  end;
end;
end.
