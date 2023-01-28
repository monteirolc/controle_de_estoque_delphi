inherited frmPedido: TfrmPedido
  Caption = 'frmPedido'
  ClientHeight = 347
  ClientWidth = 593
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 599
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited panRodape: TPanel
    Top = 306
    Width = 593
    ExplicitTop = 306
    ExplicitWidth = 593
    DesignSize = (
      593
      41)
    inherited btnOk: TBitBtn
      Left = 413
      ExplicitLeft = 413
    end
    inherited btnCancel: TBitBtn
      Left = 501
      ExplicitLeft = 501
    end
    object dbnPedido: TDBNavigator
      Left = 24
      Top = 8
      Width = 240
      Height = 25
      TabOrder = 2
    end
  end
  object panPedido: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 105
    Align = alTop
    TabOrder = 1
  end
  object grdItems: TDBGrid
    Left = 0
    Top = 105
    Width = 593
    Height = 201
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = grdItemsEnter
  end
end
