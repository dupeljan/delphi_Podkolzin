object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 891
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
end
