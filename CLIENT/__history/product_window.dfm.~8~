object PRODUCT_FORM: TPRODUCT_FORM
  Left = 0
  Top = 0
  Caption = 'PRODUCT_FORM'
  ClientHeight = 391
  ClientWidth = 1211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1217
    Height = 393
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.TProduct
    Left = 120
    Top = 112
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 176
    object ADD: TMenuItem
      Caption = 'ADD'
      OnClick = ADDClick
    end
    object DELETE: TMenuItem
      Caption = 'DELETE'
      OnClick = DELETEClick
    end
    object EDIT: TMenuItem
      Caption = 'EDIT'
      OnClick = EDITClick
    end
    object EXIT: TMenuItem
      Caption = 'EXIT'
      OnClick = EXITClick
    end
  end
end
