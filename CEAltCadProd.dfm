inherited frmAltCadProd: TfrmAltCadProd
  Caption = 'Cadastro de Produto'
  ClientHeight = 316
  ClientWidth = 641
  ExplicitWidth = 647
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 611
    Height = 245
    ExplicitLeft = 15
    ExplicitTop = -9
    ExplicitWidth = 606
    ExplicitHeight = 306
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
    Left = 142
    Top = 32
    Width = 83
    Height = 13
    Caption = 'Nome do Produto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [3]
    Left = 40
    Top = 80
    Width = 39
    Height = 13
    Caption = 'Estoque'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 40
    Top = 120
    Width = 99
    Height = 13
    Caption = 'Pre'#231'o '#218'ltima Compra'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [5]
    Left = 40
    Top = 160
    Width = 96
    Height = 13
    Caption = 'Pre'#231'o Venda Normal'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [6]
    Left = 40
    Top = 200
    Width = 120
    Height = 13
    Caption = 'Pre'#231'o Venda Promocional'
    FocusControl = DBEdit6
  end
  inherited panRodape: TPanel
    Top = 275
    Width = 641
    ExplicitTop = 336
    ExplicitWidth = 564
    inherited btnOk: TBitBtn
      Left = 461
      ExplicitLeft = 384
    end
    inherited btnCancel: TBitBtn
      Left = 549
      ExplicitLeft = 472
    end
    inherited dbnAltCadastro: TDBNavigator
      DataSource = dtmCE.dtsProduto
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 48
    Width = 96
    Height = 21
    DataField = 'CHAVEPRO'
    DataSource = dtmCE.dtsProduto
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 142
    Top = 48
    Width = 465
    Height = 21
    DataField = 'NOME'
    DataSource = dtmCE.dtsProduto
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = dtmCE.dtsProduto
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 136
    Width = 134
    Height = 21
    DataField = 'PUC'
    DataSource = dtmCE.dtsProduto
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 40
    Top = 176
    Width = 134
    Height = 21
    DataField = 'PVN'
    DataSource = dtmCE.dtsProduto
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 40
    Top = 216
    Width = 134
    Height = 21
    DataField = 'PVP'
    DataSource = dtmCE.dtsProduto
    TabOrder = 6
  end
end
