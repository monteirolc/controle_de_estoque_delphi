unit CEPesqFnc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEPesquisar, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPesqFnc = class(TfrmPesquisar)
  private
  protected
    procedure PesquisarPorCodigo; override;
    procedure PesquisarPorNome; override;
  public
    { Public declarations }
  end;

var
  frmPesqFnc: TfrmPesqFnc;

implementation

{$R *.dfm}

{ TfrmPesqFnc }

uses CEDM, Data.DB;

procedure TfrmPesqFnc.PesquisarPorCodigo;
begin
  inherited;
  dtmCE.idsFornecedor.Locate('CHAVEFOR', edtValor.Text, []);
end;

procedure TfrmPesqFnc.PesquisarPorNome;
begin
  inherited;
  dtmCE.idsFornecedor.Locate('NOME', edtValor.Text, [loPartialKey, loCaseInsensitive]);
end;

end.
