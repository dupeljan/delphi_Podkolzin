object purchase_inv_group_form: Tpurchase_inv_group_form
  Left = 0
  Top = 0
  Caption = 'purchase_inv_group_form'
  ClientHeight = 600
  ClientWidth = 511
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
  object Ginv_group: TDBGrid
    Left = 0
    Top = 0
    Width = 513
    Height = 161
    DataSource = inv_group
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Ginv: TDBGrid
    Left = 0
    Top = 304
    Width = 513
    Height = 185
    DataSource = inv
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
