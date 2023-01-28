unit CECadCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CECadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, CEAltCadCli;

type
  TfrmCadCli = class(TfrmCadastro)
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}

uses CEDM, CEPesqCli, CEFiltCli;

procedure TfrmCadCli.actFiltrarExecute(Sender: TObject);
begin
  if FfrmFiltro = nil then
    FfrmFiltro := TfrmFiltCli.Create(Self);

  inherited;
end;

procedure TfrmCadCli.actPesquisarExecute(Sender: TObject);
begin
  if FfrmPesquisar = nil then
    FfrmPesquisar := TfrmPesqCli.Create(Self);

  inherited;
end;

procedure TfrmCadCli.FormCreate(Sender: TObject);
begin
  inherited;
  FfrmAltCadastro := TfrmAltCadCli.Create(Self);
end;

procedure TfrmCadCli.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadCli := nil;
end;

end.
