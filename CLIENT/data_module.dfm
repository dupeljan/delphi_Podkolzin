object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 1046
  Width = 759
  object my_database: TIBDatabase
    Connected = True
    DatabaseName = 
      'C:\Users\dupel\OneDrive\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\DELPHI '#1047#1040#1063#1045#1058'\DB\VEGETABLES_' +
      'DATABASE_NEW.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'lc_ctype=WIN1251'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 80
    Top = 56
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = my_database
    Left = 176
    Top = 56
  end
  object spAddProvider: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PROVIDER'
    Left = 64
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end>
  end
  object TProvider: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDER'
    UniDirectional = False
    Left = 64
    Top = 184
  end
  object spDeleteProvider: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PROVIDER'
    Left = 152
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spEditProvider: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'EDIT_PROVIDER'
    Left = 256
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object TProduct: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PRODUCT'
    UniDirectional = False
    Left = 416
    Top = 184
  end
  object spAddProduct: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PRODUCT'
    Left = 408
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PROVIDER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end>
  end
  object spDeleteProduct: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PRODUCT'
    Left = 496
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spEditProduct: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'EDIT_PRODUCT'
    Left = 600
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PROVIDER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object TPurchase_inv: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PURCHASE_INV'
    UniDirectional = False
    Left = 56
    Top = 344
  end
  object spAddPurchase_inv: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PURCHASE_INV'
    Left = 56
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end>
  end
  object spDeletePurchase_inv: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PURCHASE_INV'
    Left = 144
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object TLoss: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'LOSS'
    UniDirectional = False
    Left = 416
    Top = 336
  end
  object spAddLoss: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_LOSS'
    Left = 416
    Top = 408
    ParamData = <
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end>
  end
  object TDaily_income: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DAILY_INCOME'
    UniDirectional = False
    Left = 592
    Top = 336
  end
  object spAddDaily_income: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_DAILY_INCOME'
    Left = 600
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end>
  end
  object QPurchase_inv_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'purchase_inv.id as id,'
      'provider.name as provider_name,'
      '       product.name as product_name,'
      '       purchase_inv.the_date as the_date,'
      '       purchase_inv.product_count as product_count,'
      '       purchase_inv.price as price'
      
        '          from provider join product on provider.id = product.pr' +
        'ovider_id'
      
        '          join purchase_inv on product.id =  purchase_inv.produc' +
        't_id;')
    Left = 424
    Top = 56
  end
  object QLoss_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '       loss.id as id,'
      '       provider.name as provider_name,'
      '       product.name as product_name,'
      '       loss.the_date as the_date,'
      '       loss.product_count as product_count'
      
        '          from provider join product on provider.id = product.pr' +
        'ovider_id'
      '          join loss on product.id = loss.product_id;')
    Left = 504
    Top = 56
  end
  object QDaily_income_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '       daily_income.id as id,'
      '       provider.name as provider_name,'
      '       product.name as product_name,'
      '       daily_income.the_date as the_date,'
      '       daily_income.product_count as product_count'
      
        '          from provider join product on provider.id = product.pr' +
        'ovider_id'
      
        '          join daily_income on product.id = daily_income.product' +
        '_id;')
    Left = 600
    Top = 56
  end
  object TPurchase_inv_group: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PURCHASE_INV_GROUP'
    UniDirectional = False
    Left = 64
    Top = 552
  end
  object spDeletePurcahse_inv_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PURCHASE_INV_GROUP'
    Left = 152
    Top = 632
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddPurchase_inv_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PURCHASE_INV_GROUP'
    Left = 48
    Top = 632
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PURCHASE_INV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_INV_NUMBER'
        ParamType = ptInput
      end>
  end
  object QPurchase_inv_group_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '    purchase_inv.id as id,'
      '    provider.name as provider_name,'
      '    product.name as product_name,'
      '    purchase_inv.product_count as product_count,'
      '    purchase_inv.price as price,'
      '    purchase_inv.the_date as the_date'
      ''
      ''
      ' from'
      'product join provider on product.provider_id = provider.id'
      'join'
      'purchase_inv join purchase_inv_group on'
      'purchase_inv.id = purchase_inv_group.purchase_inv_id'
      ''
      'on purchase_inv.product_id = product.id'
      ''
      'where purchase_inv_group.invoice_number =  :IN_PURCHASE_NUMBER;')
    Left = 232
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PURCHASE_NUMBER'
        ParamType = ptInput
      end>
  end
  object spGetPrice: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'GET_PRICE'
    Left = 472
    Top = 808
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUT_PRICE'
        ParamType = ptOutput
      end>
  end
  object TLoss_group: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'LOSS_GROUP'
    UniDirectional = False
    Left = 416
    Top = 552
  end
  object spAddLoss_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_LOSS_GROUP'
    Left = 408
    Top = 632
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_INVOICE_NUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_LOSS_ID'
        ParamType = ptInput
      end>
  end
  object spDeleteLoss_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_LOSS_GROUP'
    Left = 520
    Top = 640
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object QLoss_group_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '    loss_group.id as id,'
      '    product.id as PRODUCT_ID,'
      '    provider.name as provider_name,'
      '    product.name as product_name,'
      '    loss.product_count as product_count,'
      '    loss.the_date as the_date'
      ''
      ''
      ' from'
      'product join provider on product.provider_id = provider.id'
      'join'
      'loss join loss_group on'
      'loss.id = loss_group.loss_id'
      ''
      'on loss.product_id = product.id'
      ''
      'where loss_group.INVOICE_NUMBER =  :IN_PURCHASE_NUMBER;')
    Left = 560
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PURCHASE_NUMBER'
        ParamType = ptInput
      end>
  end
  object TDaily_income_group: TIBTable
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DAILY_INCOME_GROUP'
    UniDirectional = False
    Left = 56
    Top = 728
  end
  object spAddDaily_income_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_DAILY_INCOME_GROUP'
    Left = 56
    Top = 800
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_INVOICE_NUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_DAILY_INCOME_ID'
        ParamType = ptInput
      end>
  end
  object spDeleteDaily_income_group: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_DAILY_INCOME_GROUP'
    Left = 160
    Top = 800
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object QDaily_income_group_pretty: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '    daily_income_group.id as id,'
      '    product.id as PRODUCT_ID,'
      '    provider.name as provider_name,'
      '    product.name as product_name,'
      '    daily_income.product_count as product_count,'
      '    daily_income.the_date as the_date'
      ''
      ''
      ' from'
      'product join provider on product.provider_id = provider.id'
      'join'
      'daily_income join daily_income_group on'
      'daily_income.id = daily_income_group.daily_income_id'
      ''
      'on daily_income.product_id = product.id'
      ''
      'where daily_income_group.INVOICE_NUMBER =  :IN_PURCHASE_NUMBER;')
    Left = 168
    Top = 728
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PURCHASE_NUMBER'
        ParamType = ptInput
      end>
  end
  object QGetProvider_products: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select id, name as product_name from product where provider_id =' +
        ' :IN_PROVIDER_ID;')
    Left = 400
    Top = 736
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PROVIDER_ID'
        ParamType = ptInput
      end>
  end
  object spGetCount: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'GET_PRODUCT_COUNT'
    Left = 384
    Top = 808
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUT_PURCH'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_LOSS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_DAILY_INCOME'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_COUNT'
        ParamType = ptOutput
      end>
  end
  object QGet_Period_Daily_income: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select the_date as THE_DATE , sum( (select out_price from get_pr' +
        'ice(product_id,the_date)) ) as PRICE'
      'from daily_income'
      
        'where product_id in (select id from product where provider_id = ' +
        ':IN_PROVIDER_ID)'
      'AND'
      'datediff(DAY,the_date,:IN_DATE_BEGIN_DATE) <= 0'
      'AND'
      'datediff(DAY,the_date,:IN_DATE_END_DATE)  >= 0'
      'group by the_date')
    Left = 96
    Top = 912
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PROVIDER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_END_DATE'
        ParamType = ptInput
      end>
  end
  object QGet_Period_Loss: TIBQuery
    Database = my_database
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select the_date as THE_DATE , sum( (select out_price from get_pr' +
        'ice(product_id,the_date)) ) as PRICE'
      'from loss'
      
        'where product_id in (select  id from product where provider_id =' +
        ' :IN_PROVIDER_ID)'
      'AND'
      'datediff(DAY,the_date,:IN_DATE_BEGIN_DATE) <= 0'
      'AND'
      'datediff(DAY,the_date,:IN_DATE_END_DATE)  >= 0'
      'group by the_date')
    Left = 224
    Top = 912
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PROVIDER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_END_DATE'
        ParamType = ptInput
      end>
  end
end
