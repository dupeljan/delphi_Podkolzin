﻿object purchase_inv_add_form: Tpurchase_inv_add_form
  Left = 0
  Top = 0
  Caption = #1044#1054#1041#1040#1042#1048#1058#1068' '#1055#1056#1048#1061#1054#1044
  ClientHeight = 231
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LProduct: TLabel
    Left = 40
    Top = 16
    Width = 49
    Height = 13
    Caption = #1055#1056#1054#1044#1059#1050#1058
  end
  object КОЛИЧЕСТВО: TLabel
    Left = 406
    Top = 34
    Width = 69
    Height = 13
    Caption = #1050#1054#1051#1048#1063#1045#1057#1058#1042#1054
  end
  object Label2: TLabel
    Left = 406
    Top = 85
    Width = 28
    Height = 13
    Caption = #1062#1045#1053#1040
  end
  object Label1: TLabel
    Left = 406
    Top = 136
    Width = 28
    Height = 13
    Caption = #1044#1040#1058#1040
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 35
    Width = 389
    Height = 120
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
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROVIDER_ID'
        Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
        Width = 120
        Visible = True
      end>
  end
  object leCount: TLabeledEdit
    Left = 395
    Top = 56
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'leCount'
    LabelSpacing = -10
    TabOrder = 1
  end
  object leCost: TLabeledEdit
    Left = 395
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'leCost'
    LabelSpacing = -10
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 395
    Top = 155
    Width = 186
    Height = 21
    Date = 43632.000000000000000000
    Time = 0.602828634262550600
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 166
    Top = 184
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 247
    Top = 182
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = dm.TProduct
    Left = 112
    Top = 168
  end
end
