object dtmCE: TdtmCE
  OldCreateOrder = False
  Height = 381
  Width = 562
  object idbCE: TIBDatabase
    Connected = True
    DatabaseName = 'C:\bds\CE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = itrCE
    ServerType = 'IBServer'
    Left = 408
    Top = 32
  end
  object itrCE: TIBTransaction
    Active = True
    DefaultDatabase = idbCE
    Left = 472
    Top = 32
  end
  object idsCliente: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CHAVECLI = :OLD_CHAVECLI')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (CHAVECLI, NOME, ENDERECO, BAIRRO, CIDADE, UF, CEP, TIPOFISCAL' +
        ', CPFCNPJ)'
      'values'
      
        '  (:CHAVECLI, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :TI' +
        'POFISCAL, '
      '   :CPFCNPJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CHAVECLI,'
      '  NOME,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TIPOFISCAL,'
      '  CPFCNPJ'
      'from CLIENTE '
      'where'
      '  CHAVECLI = :CHAVECLI')
    SelectSQL.Strings = (
      'select C.* from CLIENTE C')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CHAVECLI = :CHAVECLI,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  TIPOFISCAL = :TIPOFISCAL,'
      '  CPFCNPJ = :CPFCNPJ'
      'where'
      '  CHAVECLI = :OLD_CHAVECLI')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsFornecedor
    Left = 48
    Top = 40
    object idsClienteCHAVECLI: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CHAVECLI'
      Origin = 'C.CHAVECLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsClienteNOME: TIBStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOME'
      Origin = 'C.NOME'
      Size = 40
    end
    object idsClienteENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'C.ENDERECO'
      Size = 40
    end
    object idsClienteBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'CLIENTE.BAIRRO'
    end
    object idsClienteCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CLIENTE.CIDADE'
    end
    object idsClienteUF: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      Origin = 'CLIENTE.UF'
      FixedChar = True
      Size = 2
    end
    object idsClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTE.CEP'
      FixedChar = True
      Size = 8
    end
    object idsClienteTIPOFISCAL: TIBStringField
      DisplayLabel = 'F'#237'sica/Jur'#237'dica'
      FieldName = 'TIPOFISCAL'
      Origin = 'CLIENTE.TIPOFISCAL'
      FixedChar = True
      Size = 1
    end
    object idsClienteCPFCNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPFCNPJ'
      Origin = 'CLIENTE.CPFCNPJ'
      FixedChar = True
      Size = 14
    end
  end
  object dtsCliente: TDataSource
    DataSet = idsCliente
    Left = 136
    Top = 40
  end
  object idsFornecedor: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  CHAVEFOR = :OLD_CHAVEFOR')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (CHAVEFOR, NOME, ENDERECO, BAIRRO, CIDADE, UF, CEP, TIPOFISCAL' +
        ', CPFCNPJ)'
      'values'
      
        '  (:CHAVEFOR, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :TI' +
        'POFISCAL, '
      '   :CPFCNPJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CHAVEFOR,'
      '  NOME,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TIPOFISCAL,'
      '  CPFCNPJ'
      'from FORNECEDOR '
      'where'
      '  CHAVEFOR = :CHAVEFOR')
    SelectSQL.Strings = (
      'select F.* from FORNECEDOR F')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  CHAVEFOR = :CHAVEFOR,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  TIPOFISCAL = :TIPOFISCAL,'
      '  CPFCNPJ = :CPFCNPJ'
      'where'
      '  CHAVEFOR = :OLD_CHAVEFOR')
    ParamCheck = True
    UniDirectional = False
    Left = 48
    Top = 104
    object idsFornecedorCHAVEFOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CHAVEFOR'
      Origin = 'F.CHAVEFOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsFornecedorNOME: TIBStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'NOME'
      Origin = 'F.NOME'
      Size = 50
    end
    object idsFornecedorENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'F.ENDERECO'
      Size = 50
    end
    object idsFornecedorBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'F.BAIRRO'
      Size = 30
    end
    object idsFornecedorCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'F.CIDADE'
      Size = 30
    end
    object idsFornecedorUF: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      Origin = 'F.UF'
      FixedChar = True
      Size = 2
    end
    object idsFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'F.CEP'
      Size = 8
    end
    object idsFornecedorTIPOFISCAL: TIBStringField
      DisplayLabel = 'F'#195#173'sica/Jur'#195#173'dica'
      FieldName = 'TIPOFISCAL'
      Origin = 'F.TIPOFISCAL'
      FixedChar = True
      Size = 1
    end
    object idsFornecedorCPFCNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPFCNPJ'
      Origin = 'F.CPFCNPJ'
      Size = 14
    end
  end
  object dtsFornecedor: TDataSource
    DataSet = idsFornecedor
    Left = 136
    Top = 104
  end
  object idsProduto: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  CHAVEPRO = :OLD_CHAVEPRO and'
      '  NOME = :OLD_NOME and'
      '  ESTOQUE = :OLD_ESTOQUE and'
      '  PUC = :OLD_PUC and'
      '  PVN = :OLD_PVN and'
      '  PVP = :OLD_PVP')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      '  (CHAVEPRO, NOME, ESTOQUE, PUC, PVN, PVP)'
      'values'
      '  (:CHAVEPRO, :NOME, :ESTOQUE, :PUC, :PVN, :PVP)')
    RefreshSQL.Strings = (
      'Select '
      '  CHAVEPRO,'
      '  NOME,'
      '  ESTOQUE,'
      '  PUC,'
      '  PVN,'
      '  PVP'
      'from PRODUTO '
      'where'
      '  CHAVEPRO = :CHAVEPRO')
    SelectSQL.Strings = (
      'select P.* from PRODUTO P')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  CHAVEPRO = :CHAVEPRO,'
      '  NOME = :NOME,'
      '  ESTOQUE = :ESTOQUE,'
      '  PUC = :PUC,'
      '  PVN = :PVN,'
      '  PVP = :PVP'
      'where'
      '  CHAVEPRO = :OLD_CHAVEPRO')
    ParamCheck = True
    UniDirectional = False
    Left = 48
    Top = 168
    object idsProdutoCHAVEPRO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CHAVEPRO'
      Origin = 'PRODUTO.CHAVEPRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsProdutoNOME: TIBStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'NOME'
      Origin = 'PRODUTO.NOME'
      Size = 40
    end
    object idsProdutoESTOQUE: TIBBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = 'PRODUTO.ESTOQUE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object idsProdutoPUC: TFloatField
      DisplayLabel = 'Pre'#231'o '#218'ltima Compra'
      FieldName = 'PUC'
      Origin = 'PRODUTO.PUC'
      DisplayFormat = ',0.00'
    end
    object idsProdutoPVN: TFloatField
      DisplayLabel = 'Pre'#231'o Venda Normal'
      FieldName = 'PVN'
      Origin = 'PRODUTO.PVN'
      DisplayFormat = ',0.00'
    end
    object idsProdutoPVP: TFloatField
      DisplayLabel = 'Pre'#231'o Venda Promocional'
      FieldName = 'PVP'
      Origin = 'PRODUTO.PVP'
      DisplayFormat = ',0.00'
    end
  end
  object dtsProduto: TDataSource
    DataSet = idsProduto
    Left = 136
    Top = 168
  end
  object idsPedidoVenda: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDO'
      'where'
      '  CHAVEPED = :OLD_CHAVEPED')
    InsertSQL.Strings = (
      'insert into PEDIDO'
      '  (CHAVEPED, CHAVECLI, DATA, VALORTOTAL)'
      'values'
      '  (:CHAVEPED, :CHAVECLI, :DATA, :VALORTOTAL)')
    RefreshSQL.Strings = (
      'Select *'
      'from VPEDIDO '
      'where'
      '  CHAVEPED = :CHAVEPED')
    SelectSQL.Strings = (
      'select P.* from VPEDIDO P')
    ModifySQL.Strings = (
      'update PEDIDO'
      'set'
      '  CHAVEPED = :CHAVEPED,'
      '  CHAVECLI = :CHAVECLI,'
      '  DATA = :DATA,'
      '  VALORTOTAL = :VALORTOTAL'
      'where'
      '  CHAVEPED = :OLD_CHAVEPED')
    ParamCheck = True
    UniDirectional = False
    Left = 48
    Top = 232
    object idsPedidoVendaCHAVEPED: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CHAVEPED'
      Origin = 'PEDIDO.CHAVEPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsPedidoVendaCHAVECLI: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'CHAVECLI'
      Origin = 'PEDIDO.CHAVECLI'
      Required = True
      OnChange = idsPedidoVendaCHAVECLIChange
    end
    object idsPedidoVendaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'PEDIDO.DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object idsPedidoVendaVALORTOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALORTOTAL'
      Origin = 'PEDIDO.VALORTOTAL'
      DisplayFormat = ',0.00'
    end
    object idsPedidoVendaNOMECLIENTE: TIBStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOMECLIENTE'
      Origin = 'VPEDIDO.NOMECLIENTE'
      OnChange = idsPedidoVendaNOMECLIENTEChange
      Size = 40
    end
    object idsPedidoVendaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'VPEDIDO.BAIRRO'
    end
    object idsPedidoVendaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'VPEDIDO.CIDADE'
    end
  end
  object dtsPedidoVenda: TDataSource
    DataSet = idsPedidoVenda
    Left = 136
    Top = 232
  end
  object idsItemPV: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    AfterPost = idsItemPVAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ITEM'
      'where'
      '  NUMITEM = :OLD_NUMITEM and'
      '  CHAVEPED = :OLD_CHAVEPED')
    InsertSQL.Strings = (
      'insert into ITEM'
      
        '  (NUMITEM, CHAVEPED, CHAVEPRO, QUANTIDADE, PRECOUNITARIO, PRECO' +
        'TOTAL)'
      'values'
      
        '  (:NUMITEM, :CHAVEPED, :CHAVEPRO, :QUANTIDADE, :PRECOUNITARIO, ' +
        ':PRECOTOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMITEM,'
      '  CHAVEPED,'
      '  CHAVEPRO,'
      '  QUANTIDADE,'
      '  PRECOUNITARIO,'
      '  PRECOTOTAL'
      'from ITEM '
      'where'
      '  NUMITEM = :NUMITEM and'
      '  CHAVEPED = :CHAVEPED')
    SelectSQL.Strings = (
      'select I.* from ITEM I'
      'where I.CHAVEPED = :CHAVEPED')
    ModifySQL.Strings = (
      'update ITEM'
      'set'
      '  NUMITEM = :NUMITEM,'
      '  CHAVEPED = :CHAVEPED,'
      '  CHAVEPRO = :CHAVEPRO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECOUNITARIO = :PRECOUNITARIO,'
      '  PRECOTOTAL = :PRECOTOTAL'
      'where'
      '  NUMITEM = :OLD_NUMITEM and'
      '  CHAVEPED = :OLD_CHAVEPED')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsPedidoVenda
    Left = 232
    Top = 232
    object idsItemPVNUMITEM: TIntegerField
      DisplayLabel = 'No. Item'
      FieldName = 'NUMITEM'
      Origin = 'ITEM.NUMITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsItemPVCHAVEPED: TIntegerField
      DisplayLabel = 'C'#243'digo Pedido'
      FieldName = 'CHAVEPED'
      Origin = 'ITEM.CHAVEPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsItemPVCHAVEPRO: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'CHAVEPRO'
      Origin = 'ITEM.CHAVEPRO'
      Required = True
    end
    object idsItemPVQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'ITEM.QUANTIDADE'
      OnChange = idsItemPVChangeCalcTotal
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object idsItemPVPRECOUNITARIO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEM.PRECOUNITARIO'
      OnChange = idsItemPVChangeCalcTotal
      DisplayFormat = ',0.00'
    end
    object idsItemPVPRECOTOTAL: TFloatField
      DisplayLabel = 'Pre'#231'o Total'
      FieldName = 'PRECOTOTAL'
      Origin = 'ITEM.PRECOTOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object dtsItemPV: TDataSource
    DataSet = idsItemPV
    Left = 312
    Top = 232
  end
  object idsPedidoCompra: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDOCOMPRA'
      'where'
      '  CHAVEPCP = :OLD_CHAVEPCP')
    InsertSQL.Strings = (
      'insert into PEDIDOCOMPRA'
      '  (CHAVEPCP, CHAVEFOR, DATA, VALORTOTAL)'
      'values'
      '  (:CHAVEPCP, :CHAVEFOR, :DATA, :VALORTOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CHAVEPCP,'
      '  CHAVEFOR,'
      '  DATA,'
      '  VALORTOTAL'
      'from PEDIDOCOMPRA '
      'where'
      '  CHAVEPCP = :CHAVEPCP')
    SelectSQL.Strings = (
      'select P.* from PEDIDOCOMPRA P')
    ModifySQL.Strings = (
      'update PEDIDOCOMPRA'
      'set'
      '  CHAVEPCP = :CHAVEPCP,'
      '  CHAVEFOR = :CHAVEFOR,'
      '  DATA = :DATA,'
      '  VALORTOTAL = :VALORTOTAL'
      'where'
      '  CHAVEPCP = :OLD_CHAVEPCP')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 48
    Top = 296
    object idsPedidoCompraCHAVEPCP: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CHAVEPCP'
      Origin = 'PEDIDOCOMPRA.CHAVEPCP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsPedidoCompraCHAVEFOR: TIntegerField
      DisplayLabel = 'C'#243'digo Fornecedor'
      FieldName = 'CHAVEFOR'
      Origin = 'PEDIDOCOMPRA.CHAVEFOR'
    end
    object idsPedidoCompraDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'PEDIDOCOMPRA.DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object idsPedidoCompraVALORTOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALORTOTAL'
      Origin = 'PEDIDOCOMPRA.VALORTOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object dtsPedidoCompra: TDataSource
    DataSet = idsPedidoCompra
    Left = 136
    Top = 296
  end
  object idsItemPC: TIBDataSet
    Database = idbCE
    Transaction = itrCE
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ITEMPEDCOMP'
      'where'
      '  NUMITEM = :OLD_NUMITEM and'
      '  CHAVEPCP = :OLD_CHAVEPCP')
    InsertSQL.Strings = (
      'insert into ITEMPEDCOMP'
      
        '  (NUMITEM, CHAVEPCP, CHAVEPRO, QUANTIDADE, PRECOUNITARIO, PRECO' +
        'TOTAL)'
      'values'
      
        '  (:NUMITEM, :CHAVEPCP, :CHAVEPRO, :QUANTIDADE, :PRECOUNITARIO, ' +
        ':PRECOTOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMITEM,'
      '  CHAVEPCP,'
      '  CHAVEPRO,'
      '  QUANTIDADE,'
      '  PRECOUNITARIO,'
      '  PRECOTOTAL'
      'from ITEMPEDCOMP '
      'where'
      '  NUMITEM = :NUMITEM and'
      '  CHAVEPCP = :CHAVEPCP')
    SelectSQL.Strings = (
      'select I.* from ITEMPEDCOMP I'
      'where I.CHAVEPCP = :CHAVEPCP')
    ModifySQL.Strings = (
      'update ITEMPEDCOMP'
      'set'
      '  NUMITEM = :NUMITEM,'
      '  CHAVEPCP = :CHAVEPCP,'
      '  CHAVEPRO = :CHAVEPRO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECOUNITARIO = :PRECOUNITARIO,'
      '  PRECOTOTAL = :PRECOTOTAL'
      'where'
      '  NUMITEM = :OLD_NUMITEM and'
      '  CHAVEPCP = :OLD_CHAVEPCP')
    ParamCheck = True
    UniDirectional = False
    Active = True
    DataSource = dtsPedidoCompra
    Left = 232
    Top = 296
    object idsItemPCNUMITEM: TIntegerField
      DisplayLabel = 'No. Item'
      FieldName = 'NUMITEM'
      Origin = 'ITEMPEDCOMP.NUMITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsItemPCCHAVEPCP: TLargeintField
      DisplayLabel = 'C'#243'digo Pedido'
      FieldName = 'CHAVEPCP'
      Origin = 'ITEMPEDCOMP.CHAVEPCP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object idsItemPCCHAVEPRO: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'CHAVEPRO'
      Origin = 'ITEMPEDCOMP.CHAVEPRO'
      Required = True
    end
    object idsItemPCQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMPEDCOMP.QUANTIDADE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object idsItemPCPRECOUNITARIO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEMPEDCOMP.PRECOUNITARIO'
      DisplayFormat = ',0.00'
    end
    object idsItemPCPRECOTOTAL: TFloatField
      DisplayLabel = 'Pre'#231'o Total'
      FieldName = 'PRECOTOTAL'
      Origin = 'ITEMPEDCOMP.PRECOTOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object dtsItemPC: TDataSource
    DataSet = idsItemPC
    Left = 312
    Top = 296
  end
  object itrCom: TIBTransaction
    DefaultDatabase = idbCE
    Left = 472
    Top = 104
  end
  object isqCom: TIBSQL
    Database = idbCE
    Transaction = itrCom
    Left = 408
    Top = 104
  end
end
