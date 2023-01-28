unit CEPedVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEPedido, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmPedVenda = class(TfrmPedido)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure panPedidoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdItemsEnter(Sender: TObject);
    procedure grdItemsColExit(Sender: TObject);
    procedure grdItemsCellClick(Column: TColumn);

{    procedure grdItemsColExit(Sender: TObject);}
  private
  public
    { Public declarations }
  end;

var
  frmPedVenda: TfrmPedVenda;

implementation

{$R *.dfm}

uses CEDM;

var
  valorAtual: Real;

procedure TfrmPedVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmCE.idsPedidoVenda.Close;
  dtmCE.idsItemPV.Close;
  dtmCE.idsProduto.Close;{---}
end;

procedure TfrmPedVenda.FormShow(Sender: TObject);
begin
  inherited;
  dtmCE.idsPedidoVenda.Open;
  dtmCE.idsItemPV.Open;
  dtmCE.idsProduto.Open;{---}
end;
{---------------------------------------------------------------}
procedure TfrmPedVenda.grdItemsCellClick(Column: TColumn);
begin
  inherited;
    valorAtual := StrToFloat(grdItems.Columns[3].Field.Text);
    end;
{---------------------------------------------------------------}
procedure TfrmPedVenda.grdItemsColExit(Sender: TObject);
var
  preco: Real;
  estoque: Real;
  chavePro: Integer;
  indice: Integer;
  valorNovo: Real;
begin
  inherited;
  indice := StrToInt(IntToStr(grdItems.SelectedIndex));
  try
    chavePro := StrToInt(grdItems.Columns[2].Field.Value);
  except
    chavePro := 0;
  end;
  if indice = 2 then
  begin
    if grdItems.Columns[2].Field.Value > 0 then
    begin
      preco := dtmCE.PrecoUnitario(chavePro);
      grdItems.Columns[4].Field.Value := preco;
    end;
  end
  else if indice = 3 then
  begin
    if grdItems.Columns[3].Field.Value > 0 then
    begin
      estoque := dtmCE.ObterEstoque(chavePro);
      try
        if estoque < grdItems.Columns[3].Field.Value then
        begin
          grdItems.Columns[3].Field.Value := estoque;
          valorNovo := estoque;
          raise Exception.Create('Valor inválido! Limite de estoque é ' + FloatToStr(estoque));
        end
        else
           valorNovo :=  grdItems.Columns[3].Field.Value;
      finally
        dtmCE.AtualizarEstoque(estoque, valorAtual,valorNovo, chavePro);
      end;
    end;
  end;

end;


procedure TfrmPedVenda.grdItemsEnter(Sender: TObject);
begin
  inherited;

  if dtmCE.idsPedidoVenda.State in [dsEdit, dsInsert] then
    dtmCE.idsPedidoVenda.Post;
end;

procedure TfrmPedVenda.panPedidoEnter(Sender: TObject);
begin
  inherited;
  dbnPedido.DataSource := dtmCE.dtsPedidoVenda;
end;

end.
