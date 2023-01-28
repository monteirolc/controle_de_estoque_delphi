inherited frmPedVenda: TfrmPedVenda
  Caption = 'Pedidos de Venda'
  ClientHeight = 401
  OnShow = FormShow
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 13
  inherited panRodape: TPanel
    Top = 360
    ExplicitTop = 360
    inherited dbnPedido: TDBNavigator
      Width = 230
      DataSource = dtmCE.dtsPedidoVenda
      Hints.Strings = ()
      ExplicitWidth = 230
    end
  end
  inherited panPedido: TPanel
    Height = 201
    OnEnter = panPedidoEnter
    ExplicitHeight = 201
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 75
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Cliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 176
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 344
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 176
      Top = 75
      Width = 78
      Height = 13
      Caption = 'Nome do Cliente'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 24
      Top = 125
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 294
      Top = 125
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 32
      Width = 134
      Height = 21
      DataField = 'CHAVEPED'
      DataSource = dtmCE.dtsPedidoVenda
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 91
      Width = 134
      Height = 21
      DataField = 'CHAVECLI'
      DataSource = dtmCE.dtsPedidoVenda
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 176
      Top = 32
      Width = 134
      Height = 21
      DataField = 'DATA'
      DataSource = dtmCE.dtsPedidoVenda
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 344
      Top = 32
      Width = 134
      Height = 21
      DataField = 'VALORTOTAL'
      DataSource = dtmCE.dtsPedidoVenda
      Enabled = False
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 176
      Top = 91
      Width = 382
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dtmCE.dtsPedidoVenda
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 141
      Width = 264
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dtmCE.dtsPedidoVenda
      Enabled = False
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 294
      Top = 141
      Width = 264
      Height = 21
      DataField = 'CIDADE'
      DataSource = dtmCE.dtsPedidoVenda
      Enabled = False
      TabOrder = 5
    end
  end
  inherited grdItems: TDBGrid
    Top = 201
    Height = 159
    DataSource = dtmCE.dtsItemPV
    OnCellClick = grdItemsCellClick
    OnColExit = grdItemsColExit
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVEPED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVEPRO'
        Title.Alignment = taRightJustify
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taRightJustify
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOUNITARIO'
        Title.Alignment = taRightJustify
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOTOTAL'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Width = 92
        Visible = True
      end>
  end
end
