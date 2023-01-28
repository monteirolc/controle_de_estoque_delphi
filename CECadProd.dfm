inherited frmCadProd: TfrmCadProd
  Caption = 'Cadastro de Produtos'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdCadastro: TDBGrid
    DataSource = dtmCE.dtsProduto
  end
  inherited aclCadastro: TActionList
    inherited actOrdenar: TAction
      OnExecute = actOrdenarExecute
    end
  end
end
