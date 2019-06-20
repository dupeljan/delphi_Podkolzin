object MAIN_WINDOW: TMAIN_WINDOW
  Left = 0
  Top = 0
  Caption = 'MAIN_WINDOW'
  ClientHeight = 472
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PROVIDERS: TButton
    Left = 40
    Top = 33
    Width = 193
    Height = 80
    Caption = #1055#1054#1057#1058#1040#1042#1065#1048#1050#1048
    TabOrder = 0
    OnClick = PROVIDERSClick
  end
  object PURCHASE_INV: TButton
    Left = 40
    Top = 169
    Width = 193
    Height = 64
    Caption = #1055#1056#1048#1061#1054#1044#1053#1040#1071' '#1053#1040#1050#1051#1040#1044#1053#1040#1071
    TabOrder = 1
    OnClick = PURCHASE_INVClick
  end
  object PRODUCTS: TButton
    Left = 40
    Top = 104
    Width = 193
    Height = 59
    Caption = #1055#1056#1054#1044#1059#1050#1058#1067
    TabOrder = 2
    OnClick = PRODUCTSClick
  end
  object LOSS: TButton
    Left = 40
    Top = 232
    Width = 193
    Height = 66
    Caption = #1057#1055#1048#1057#1040#1053#1048#1071
    TabOrder = 3
    OnClick = LOSSClick
  end
  object DAYLY_INCOME: TButton
    Left = 40
    Top = 297
    Width = 193
    Height = 81
    Caption = #1055#1056#1054#1044#1040#1046#1048' '#1047#1040' '#1044#1045#1053#1068
    TabOrder = 4
    OnClick = DAYLY_INCOMEClick
  end
  object EXPORT_EXEL: TBitBtn
    Left = 40
    Top = 376
    Width = 193
    Height = 65
    Caption = #1069#1050#1057#1055#1054#1056#1058' '#1069#1050#1057#1069#1051#1068
    TabOrder = 5
    OnClick = EXPORT_EXELClick
  end
end
