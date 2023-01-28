unit CEFiltProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEFiltro, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, IBX.IBCustomDataSet;

type
  TfrmFiltProd = class(TfrmFiltro)
  private
  protected
    procedure ObterDataSet(out DataSet: TIBDataSet; out Tabela: String); override;
  public
    { Public declarations }
  end;

var
  frmFiltProd: TfrmFiltProd;

implementation

{$R *.dfm}

uses CEDM;

{ TfrmFilProd }

procedure TfrmFiltProd.ObterDataSet(out DataSet: TIBDataSet; out Tabela: String);
begin
  inherited;
  DataSet := dtmCE.idsProduto;
  Tabela := 'PRODUTO';
end;

end.
