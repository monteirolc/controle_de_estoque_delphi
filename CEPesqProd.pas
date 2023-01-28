unit CEPesqProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEPesquisar, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPesqProd = class(TfrmPesquisar)
  private
  protected
    procedure PesquisarPorCodigo; override;
    procedure PesquisarPorNome; override;
  public
    { Public declarations }
  end;

var
  frmPesqProd: TfrmPesqProd;

implementation

{$R *.dfm}

uses CEDM, Data.DB;


{ TfrmPesqProd }

procedure TfrmPesqProd.PesquisarPorCodigo;
begin
  inherited;
  dtmCE.idsProduto.Locate('CHAVEPRO', edtValor.Text, []);
end;

procedure TfrmPesqProd.PesquisarPorNome;
begin
  inherited;
  dtmCE.idsProduto.Locate('NOME', edtValor.Text, [loPartialKey, loCaseInsensitive]);
end;

end.
