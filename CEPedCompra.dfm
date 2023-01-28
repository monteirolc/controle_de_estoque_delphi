inherited frmPedCompra: TfrmPedCompra
  Caption = 'Pedidos de Compra'
  ClientHeight = 405
  OnShow = FormShow
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited panRodape: TPanel
    Top = 364
    ExplicitTop = 364
    inherited btnOk: TBitBtn
      OnClick = panPedidoClick
    end
    inherited dbnPedido: TDBNavigator
      DataSource = dtmCE.dtsPedidoCompra
      Hints.Strings = ()
    end
  end
  inherited panPedido: TPanel
    Height = 225
    Caption = 'dtmCE.dtsPedidoCompra'
    Enabled = False
    OnClick = panPedidoClick
    OnEnter = panPedidoEnter
    ExplicitHeight = 225
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 48
      Top = 72
      Width = 91
      Height = 13
      Caption = 'C'#243'digo Fornecedor'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 48
      Top = 112
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 48
      Top = 152
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 48
      Width = 199
      Height = 21
      DataField = 'CHAVEPCP'
      DataSource = dtmCE.dtsPedidoCompra
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 48
      Top = 88
      Width = 134
      Height = 21
      DataField = 'CHAVEFOR'
      DataSource = dtmCE.dtsPedidoCompra
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 48
      Top = 128
      Width = 134
      Height = 21
      DataField = 'DATA'
      DataSource = dtmCE.dtsPedidoCompra
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 48
      Top = 168
      Width = 134
      Height = 21
      DataField = 'VALORTOTAL'
      DataSource = dtmCE.dtsPedidoCompra
      TabOrder = 3
    end
  end
  inherited grdItems: TDBGrid
    Top = 225
    Height = 139
    DataSource = dtmCE.dtsItemPC
    OnColExit = grdItemsColExit
  end
end
