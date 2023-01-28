unit CEOrdProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEDialogo, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmOrdProd = class(TfrmDialogo)
    rgrCampos: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdProd: TfrmOrdProd;

implementation

{$R *.dfm}

end.
