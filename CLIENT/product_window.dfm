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
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      OnClick = ADDClick
    end
    object DELETE: TMenuItem
      Caption = #1059#1044#1040#1051#1048#1058#1068
      OnClick = DELETEClick
    end
    object EDIT: TMenuItem
      Caption = #1048#1047#1052#1045#1053#1048#1058#1068
      OnClick = EDITClick
    end
    object EXIT: TMenuItem
      Caption = #1042#1067#1049#1058#1048
      OnClick = EXITClick
    end
  end
end
