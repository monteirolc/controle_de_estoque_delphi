unit CECadProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CECadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmCadProd = class(TfrmCadastro)
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure actOrdenarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProd: TfrmCadProd;

implementation

{$R *.dfm}

uses CEDM, CEAltCadProd, CEPesqProd, CEFiltProd, CEOrdProd;

procedure TfrmCadProd.actFiltrarExecute(Sender: TObject);
begin
  if FfrmFiltro = nil then
    FfrmFiltro := TfrmFiltProd.Create(Self);

  inherited;
end;

procedure TfrmCadProd.actOrdenarExecute(Sender: TObject);
begin
  inherited;

  frmOrdProd := TfrmOrdProd.Create(Self);
  try
    if frmOrdProd.ShowModal = mrOk then
    begin
      case frmOrdProd.rgrCampos.ItemIndex of
        0: dtmCE.OrdenarProdutosPor('PUC');
        1: dtmCE.OrdenarProdutosPor('PVN');
        2: dtmCE.OrdenarProdutosPor('PVP');
      end;
    end;
  finally
    frmOrdProd.Free;
  end;
end;

procedure TfrmCadProd.actPesquisarExecute(Sender: TObject);
begin
  if FfrmPesquisar = nil then
    FfrmPesquisar := TfrmPesqProd.Create(Self);

  inherited;
end;

procedure TfrmCadProd.FormCreate(Sender: TObject);
begin
  inherited;
  FfrmAltCadastro := TfrmAltCadProd.Create(Self);
end;

procedure TfrmCadProd.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadProd := nil;
end;

end.
