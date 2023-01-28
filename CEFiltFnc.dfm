inherited frmFiltFnc: TfrmFiltFnc
  Caption = 'Filtrar Fornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited panRodape: TPanel
    ExplicitTop = 220
    ExplicitWidth = 281
    inherited btnOk: TBitBtn
      ExplicitLeft = 101
    end
    inherited btnCancel: TBitBtn
      ExplicitLeft = 189
    end
  end
  inherited rgrCampos: TRadioGroup
    ItemIndex = 0
    Items.Strings = (
      'CHAVEFOR'
      'Nome'
      'Bairro'
      'Cidade')
  end
end
