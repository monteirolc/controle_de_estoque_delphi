inherited frmOrdProd: TfrmOrdProd
  Caption = 'Ordenar Produtos'
  ClientHeight = 213
  ClientWidth = 253
  ExplicitWidth = 259
  ExplicitHeight = 242
  PixelsPerInch = 96
  TextHeight = 13
  inherited panRodape: TPanel
    Top = 172
    Width = 253
    inherited btnOk: TBitBtn
      Left = 73
    end
    inherited btnCancel: TBitBtn
      Left = 161
    end
  end
  object rgrCampos: TRadioGroup
    Left = 24
    Top = 16
    Width = 201
    Height = 129
    Caption = 'Campos a Ordenar'
    ItemIndex = 0
    Items.Strings = (
      'Pre'#231'o de '#218'ltima Compra'
      'Pre'#231'o de Venda Normal'
      'Pre'#231'o de Venda Promocional')
    TabOrder = 1
  end
end
