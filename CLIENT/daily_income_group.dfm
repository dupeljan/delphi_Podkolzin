object daily_income_group_form: Tdaily_income_group_form
  Left = 0
  Top = 0
  Caption = 'daily_income_group_form'
  ClientHeight = 695
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ADD: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = 'ADD'
    TabOrder = 0
    OnClick = ADDClick
  end
  object CREATE_DOCX: TButton
    Left = 208
    Top = 256
    Width = 89
    Height = 25
    Caption = 'CREATE_DOCX'
    TabOrder = 1
    OnClick = CREATE_DOCXClick
  end
  object DELETE: TButton
    Left = 288
    Top = 216
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 2
    OnClick = DELETEClick
  end
  object Ginv: TDBGrid
    Left = 0
    Top = 304
    Width = 513
    Height = 185
    DataSource = inv
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Ginv_group: TDBGrid
    Left = 0
    Top = 0
    Width = 513
    Height = 161
    DataSource = inv_group
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object invoice_number: TLabeledEdit
    Left = 104
    Top = 189
    Width = 121
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'invoice_number'
    TabOrder = 5
  end
  object inv: TDataSource
    DataSet = dm.QDaily_income_pretty
    Left = 272
    Top = 104
  end
  object inv_group: TDataSource
    DataSet = dm.TDaily_income_group
    Left = 304
    Top = 400
  end
end
