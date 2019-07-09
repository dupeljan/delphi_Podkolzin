object loss_form: Tloss_form
  Left = 0
  Top = 0
  Caption = #1057#1055#1048#1057#1040#1053#1048#1071
  ClientHeight = 415
  ClientWidth = 771
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
    Left = -8
    Top = 0
    Width = 785
    Height = 417
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
        FieldName = 'THE_DATE'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT_NAME'
        Title.Caption = #1058#1086#1074#1072#1088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROVIDER_NAME'
        Title.Caption = ' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT_COUNT'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = dm.QLoss_pretty
    Left = 424
    Top = 144
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 216
    object ADD: TMenuItem
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      OnClick = ADDClick
    end
    object EXPORT_DOCX: TMenuItem
      Caption = #1069#1050#1057#1055#1054#1056#1058' '#1044#1054#1050#1061
      OnClick = EXPORT_DOCXClick
    end
  end
end
