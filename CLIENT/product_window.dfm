object PRODUCT_FORM: TPRODUCT_FORM
  Left = 0
  Top = 0
  Caption = #1058#1054#1042#1040#1056#1067
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = #1053#1086#1084#1077#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROVIDER_ID'
        Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1086#1076#1072#1074#1094#1072
        Width = 90
        Visible = True
      end>
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
