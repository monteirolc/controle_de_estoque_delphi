unit CEPedCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEPedido, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmPedCompra = class(TfrmPedido)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure panPedidoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdItemsEnter(Sender: TObject);
    procedure panPedidoClick(Sender: TObject);
    procedure grdItemsColExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedCompra: TfrmPedCompra;

implementation

{$R *.dfm}

uses CEDM;

procedure TfrmPedCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmCE.idsPedidoCompra.Close;
  dtmCE.idsItemPC.Close;
  dtmCE.idsProduto.Close;{---}
end;

procedure TfrmPedCompra.FormShow(Sender: TObject);
begin
  inherited;
  dtmCE.idsPedidoCompra.Open;
  dtmCE.idsItemPC.Open;
  dtmCE.idsProduto.Open;{---}
end;
{-------------------------------------------------------}
procedure TfrmPedCompra.grdItemsColExit(Sender: TObject);
var
  quantidade, valor: Real;
begin
  inherited;
  try
    quantidade := grdItems.Columns[3].Field.Value;
    valor := grdItems.Columns[4].Field.Value;
  except
    quantidade := 0;
    valor := 0;
  end;
  try
    grdItems.Columns[5].Field.Value := quantidade * valor;
  except
    grdItems.Columns[6].Field.Value := 0
  end;
end;
{-----------------------------------------------------}
procedure TfrmPedCompra.grdItemsEnter(Sender: TObject);
begin
  inherited;

  if dtmCE.idsPedidoCompra.State in [dsEdit, dsInsert] then
    dtmCE.idsPedidoCompra.Post;
end;

{------------------------------------------------------}
procedure TfrmPedCompra.panPedidoClick(Sender: TObject);
var
  codPed, codProd, i: Integer;
  quantidade, soma: Real;

begin
  inherited;
  codPed := StrToInt(grdItems.Columns[1].Field.Value);
  codProd := StrToInt(grdItems.Columns[2].Field.Value);
  quantidade := StrToFloat(grdItems.Columns[3].Field.Value);

  if quantidade > 0 then
    if codPed > 0 then
      if codProd > 0 then
        DBEdit4.Text := dtmCE.SomarTotalColuna(codPed);
end;

procedure TfrmPedCompra.panPedidoEnter(Sender: TObject);
begin
  inherited;
  dbnPedido.DataSource := dtmCE.dtsPedidoCompra;
end;

end.
