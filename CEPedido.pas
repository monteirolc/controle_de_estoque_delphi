unit CEPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEDialogo, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, IBX.IBDatabase,
  IBX.IBCustomDataSet;

type
  TfrmPedido = class(TfrmDialogo)
    panPedido: TPanel;
    grdItems: TDBGrid;
    dbnPedido: TDBNavigator;
    procedure grdItemsEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTransacao: TIBTransaction;
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

procedure TfrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if ModalResult = mrOk then
    FTransacao.CommitRetaining
  else
    FTransacao.RollbackRetaining;
end;

procedure TfrmPedido.FormCreate(Sender: TObject);
begin
  inherited;

  if Assigned(grdItems.DataSource) and
     Assigned(grdItems.DataSource.DataSet) and
     (grdItems.DataSource.DataSet is TIBCustomDataSet) then
    FTransacao := TIBCustomDataSet(grdItems.DataSource.DataSet).Transaction;
end;

procedure TfrmPedido.grdItemsEnter(Sender: TObject);
begin
  inherited;

  if Assigned(grdItems.DataSource) then
    dbnPedido.DataSource := grdItems.DataSource;
end;

end.
