unit CEFiltFnc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEFiltro, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, IBX.IBCustomDataSet;

type
  TfrmFiltFnc = class(TfrmFiltro)
  private
  protected
    procedure ObterDataSet(out DataSet: TIBDataSet; out Tabela: String); override;
  public
    { Public declarations }
  end;

var
  frmFiltFnc: TfrmFiltFnc;

implementation

{$R *.dfm}

uses CEDM;

{ TfrmFiltFnc }

procedure TfrmFiltFnc.ObterDataSet(out DataSet: TIBDataSet; out Tabela: String);
begin
  inherited;
  DataSet := dtmCE.idsFornecedor;
  Tabela := 'FORNECEDOR';
end;

end.
