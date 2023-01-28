inherited frmCadCli: TfrmCadCli
  Caption = 'Cadastro de Clientes'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdCadastro: TDBGrid
    DataSource = dtmCE.dtsCliente
  end
end
