inherited frmAltCadFnc: TfrmAltCadFnc
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 362
  ClientWidth = 675
  ExplicitWidth = 681
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 645
    Height = 291
  end
  object Label1: TLabel [1]
    Left = 40
    Top = 32
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 160
    Top = 32
    Width = 100
    Height = 13
    Caption = 'Nome do Fornecedor'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [3]
    Left = 40
    Top = 80
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 40
    Top = 120
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [5]
    Left = 40
    Top = 160
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [6]
    Left = 40
    Top = 200
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel [7]
    Left = 91
    Top = 197
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 40
    Top = 248
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
    FocusControl = DBEdit9
  end
  inherited panRodape: TPanel
    Top = 321
    Width = 675
    ExplicitTop = 336
    ExplicitWidth = 564
    inherited btnOk: TBitBtn
      Left = 495
      ExplicitLeft = 384
    end
    inherited btnCancel: TBitBtn
      Left = 583
      ExplicitLeft = 472
    end
    inherited dbnAltCadastro: TDBNavigator
      DataSource = dtmCE.dtsFornecedor
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 48
    Width = 100
    Height = 21
    DataField = 'CHAVEFOR'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 48
    Width = 481
    Height = 21
    DataField = 'NOME'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 96
    Width = 601
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 136
    Width = 394
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 40
    Top = 176
    Width = 394
    Height = 21
    DataField = 'CIDADE'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 91
    Top = 213
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 6
  end
  object DBEdit9: TDBEdit
    Left = 40
    Top = 264
    Width = 186
    Height = 21
    DataField = 'CPFCNPJ'
    DataSource = dtmCE.dtsFornecedor
    TabOrder = 7
  end
  object cmbUF: TDBComboBox
    Left = 40
    Top = 213
    Width = 45
    Height = 21
    DataField = 'UF'
    DataSource = dtmCE.dtsFornecedor
    Items.Strings = (
      'MG'
      'SP'
      'RJ')
    TabOrder = 8
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 225
    Top = 200
    Width = 185
    Height = 42
    Caption = 'Tipo Fiscal'
    Columns = 2
    DataField = 'TIPOFISCAL'
    DataSource = dtmCE.dtsFornecedor
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 9
    Values.Strings = (
      'F'
      'J')
  end
end
