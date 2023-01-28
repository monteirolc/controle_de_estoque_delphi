unit CECadFnc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CECadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmCadFnc = class(TfrmCadastro)
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFnc: TfrmCadFnc;

implementation

{$R *.dfm}

uses CEDM, CEAltCadFnc, CEPesqFnc, CEFiltFnc;

procedure TfrmCadFnc.actFiltrarExecute(Sender: TObject);
begin
  if FfrmFiltro = nil then
    FfrmFiltro := TfrmFiltFnc.Create(Self);

  inherited;
end;

procedure TfrmCadFnc.actPesquisarExecute(Sender: TObject);
begin
  if FfrmPesquisar = nil then
    FfrmPesquisar := TfrmPesqFnc.Create(Self);

  inherited;
end;

procedure TfrmCadFnc.FormCreate(Sender: TObject);
begin
  inherited;
  FfrmAltCadastro := TfrmAltCadFnc.Create(Self);
end;

procedure TfrmCadFnc.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadFnc := nil;
end;

end.
