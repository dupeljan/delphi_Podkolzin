object purchase_inv_group_form: Tpurchase_inv_group_form
  Left = 0
  Top = 0
  Caption = #1060#1054#1056#1052#1048#1056#1054#1042#1040#1053#1048#1045' '#1055#1056#1048#1061#1054#1044#1053#1054#1049' '#1053#1040#1050#1051#1040#1044#1053#1054#1049
  ClientHeight = 600
  ClientWidth = 551
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
  object Label1: TLabel
    Left = 104
    Top = 170
    Width = 103
    Height = 13
    Caption = #1053#1054#1052#1045#1056' '#1053#1040#1050#1051#1040#1044#1053#1054#1049
  end
  object Label2: TLabel
    Left = 176
    Top = 301
    Width = 118
    Height = 13
    Caption = #1055#1054#1047#1048#1062#1048#1048' '#1053#1040#1050#1051#1040#1044#1053#1054#1049
  end
  object Ginv_group: TDBGrid
    Left = 0
    Top = 0
    Width = 553
    Height = 161
    DataSource = inv_group
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'INVOICE_NUMBER'
        Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PURCHASE_INV_ID'
        Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1079#1080#1094#1080#1080' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Width = 300
        Visible = True
      end>
  end
  object Ginv: TDBGrid
    Left = 0
    Top = 320
    Width = 553
    Height = 185
    DataSource = inv
    TabOrder = 1
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROVIDER_NAME'
        Title.Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1077#1090#1083#1100
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT_COUNT'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end>
  end
  object ADD: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = #1044#1054#1041#1040#1042#1048#1058#1068
    TabOrder = 2
    OnClick = ADDClick
  end
  object DELETE: TButton
    Left = 288
    Top = 216
    Width = 75
    Height = 25
    Caption = #1059#1044#1040#1051#1048#1058#1068
    TabOrder = 3
    OnClick = DELETEClick
  end
  object invoice_number: TLabeledEdit
    Left = 104
    Top = 189
    Width = 121
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'invoice_number'
    LabelSpacing = -10
    TabOrder = 4
  end
  object CREATE_DOCX: TButton
    Left = 208
    Top = 256
    Width = 105
    Height = 25
    Caption = #1057#1054#1047#1044#1040#1058#1068' '#1044#1054#1050#1057#1061
    TabOrder = 5
    OnClick = CREATE_DOCXClick
  end
  object inv: TDataSource
    DataSet = dm.QPurchase_inv_pretty
    Left = 272
    Top = 104
  end
  object inv_group: TDataSource
    DataSet = dm.TPurchase_inv_group
    Left = 304
    Top = 400
  end
end
