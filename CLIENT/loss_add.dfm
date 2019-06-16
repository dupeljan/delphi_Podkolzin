object loss_add_form: Tloss_add_form
  Left = 0
  Top = 0
  Caption = 'loss_add_form'
  ClientHeight = 396
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 24
    Width = 48
    Height = 13
    Caption = 'PRODUCT'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 385
    Height = 145
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object leCount: TLabeledEdit
    Left = 488
    Top = 88
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'leCount'
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 488
    Top = 152
    Width = 186
    Height = 21
    Date = 43632.000000000000000000
    Time = 0.880444918984721900
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 328
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 392
    Top = 328
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = dm.TProduct
    Left = 424
    Top = 160
  end
end
