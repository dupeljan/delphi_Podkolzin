object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 575
  Width = 393
  object my_database: TIBDatabase
    Connected = True
    DatabaseName = 
      'C:\Users\dupel\OneDrive\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\DELPHI '#1047#1040#1063#1045#1058'\DB\VEGETABLES_' +
      'DATABASE.fdb'
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
    Left = 184
    Top = 56
  end
  object spAddProduct: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'ADD_PRODUCT'
    Left = 64
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OUT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'IN_VAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_MAJOR'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_NAME'
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
    Left = 64
    Top = 120
  end
  object spDeleteProduct: TIBStoredProc
    Database = my_database
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PRODUCT'
    Left = 152
    Top = 240
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
    Left = 256
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'IN_VAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_MAJOR'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_NAME'
        ParamType = ptInput
      end>
  end
end
