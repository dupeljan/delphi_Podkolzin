﻿object purchase_inv_add_form: Tpurchase_inv_add_form
  Left = 0
  Top = 0
  Caption = 'purchase_inv_add_form'
  ClientHeight = 231
  ClientWidth = 505
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
    Left = 80
    Top = 16
    Width = 49
    Height = 13
    Caption = #1055#1056#1054#1044#1059#1050#1058
  end
  object КОЛИЧЕСТВО: TLabel
    Left = 291
    Top = 34
    Width = 69
    Height = 13
    Caption = #1050#1054#1051#1048#1063#1045#1057#1058#1042#1054
  end
  object Label2: TLabel
    Left = 291
    Top = 85
    Width = 28
    Height = 13
    Caption = #1062#1045#1053#1040
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 34
    Width = 217
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object leCount: TLabeledEdit
    Left = 280
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
    Left = 280
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
    Left = 280
    Top = 155
    Width = 186
    Height = 21
    Date = 43632.000000000000000000
    Time = 0.602828634262550700
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
