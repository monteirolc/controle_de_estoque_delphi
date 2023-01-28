inherited frmAltCadCli: TfrmAltCadCli
  Caption = 'Alterar Cadastro de Cliente'
  ClientHeight = 296
  ClientWidth = 590
  ExplicitWidth = 596
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 560
    Height = 225
    ExplicitLeft = 20
    ExplicitTop = 20
    ExplicitWidth = 560
    ExplicitHeight = 270
  end
  object labCodigo: TLabel [1]
    Left = 32
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtCodigo
  end
  object labNome: TLabel [2]
    Left = 136
    Top = 24
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
    FocusControl = edtNome
  end
  object Label3: TLabel [3]
    Left = 32
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 32
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [5]
    Left = 304
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [6]
    Left = 32
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = cmbUF
  end
  object Label7: TLabel [7]
    Left = 88
    Top = 144
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 32
    Top = 187
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
    FocusControl = DBEdit9
  end
  inherited panRodape: TPanel
    Top = 255
    Width = 590
    ExplicitTop = 255
    ExplicitWidth = 590
    DesignSize = (
      590
      41)
    inherited btnOk: TBitBtn
      Left = 414
      ExplicitLeft = 414
    end
    inherited btnCancel: TBitBtn
      Left = 502
      ExplicitLeft = 502
    end
    inherited dbnAltCadastro: TDBNavigator
      DataSource = dtmCE.dtsCliente
      Hints.Strings = ()
    end
  end
  object edtCodigo: TDBEdit
    Left = 32
    Top = 40
    Width = 78
    Height = 21
    DataField = 'CHAVECLI'
    DataSource = dtmCE.dtsCliente
    TabOrder = 1
  end
  object edtNome: TDBEdit
    Left = 136
    Top = 40
    Width = 420
    Height = 21
    DataField = 'NOME'
    DataSource = dtmCE.dtsCliente
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 80
    Width = 524
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dtmCE.dtsCliente
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 120
    Width = 264
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dtmCE.dtsCliente
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 304
    Top = 120
    Width = 252
    Height = 21
    DataField = 'CIDADE'
    DataSource = dtmCE.dtsCliente
    TabOrder = 5
  end
  object cmbUF: TDBComboBox
    Left = 32
    Top = 160
    Width = 45
    Height = 21
    DataField = 'UF'
    DataSource = dtmCE.dtsCliente
    Items.Strings = (
      'MG'
      'SP'
      'RJ')
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 160
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = dtmCE.dtsCliente
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 32
    Top = 203
    Width = 186
    Height = 21
    DataField = 'CPFCNPJ'
    DataSource = dtmCE.dtsCliente
    TabOrder = 9
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 217
    Top = 147
    Width = 185
    Height = 42
    Caption = 'Tipo Fiscal'
    Columns = 2
    DataField = 'TIPOFISCAL'
    DataSource = dtmCE.dtsCliente
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 8
    Values.Strings = (
      'F'
      'J')
  end
end
