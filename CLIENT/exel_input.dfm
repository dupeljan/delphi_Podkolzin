object exel_input_form: Texel_input_form
  Left = 0
  Top = 0
  Caption = 'exel_input_form'
  ClientHeight = 231
  ClientWidth = 756
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
    Left = 128
    Top = 48
    Width = 29
    Height = 13
    Caption = 'FROM'
  end
  object Label2: TLabel
    Left = 126
    Top = 117
    Width = 14
    Height = 13
    Caption = 'TO'
  end
  object DateFrom: TDateTimePicker
    Left = 96
    Top = 72
    Width = 186
    Height = 21
    Date = 43635.000000000000000000
    Time = 0.976912291669577800
    TabOrder = 0
  end
  object DateTo: TDateTimePicker
    Left = 96
    Top = 136
    Width = 186
    Height = 21
    Date = 43635.000000000000000000
    Time = 0.976946249997126900
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 37
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EXPORT_EXEL: TButton
    Left = 304
    Top = 184
    Width = 89
    Height = 25
    Caption = 'EXPORT_EXEL'
    TabOrder = 3
    OnClick = EXPORT_EXELClick
  end
  object DataSource1: TDataSource
    DataSet = dm.TProvider
    Left = 480
    Top = 96
  end
end
