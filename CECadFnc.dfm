inherited frmCadFnc: TfrmCadFnc
  Caption = 'Cadastro de Fornecedores'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdCadastro: TDBGrid
    DataSource = dtmCE.dtsFornecedor
  end
end
