object DAILY_INCOME_FORM: TDAILY_INCOME_FORM
  Left = 0
  Top = 0
  Caption = 'DAILY_INCOME_FORM'
  ClientHeight = 231
  ClientWidth = 505
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
    Width = 513
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.TDaily_income
    Left = 192
    Top = 88
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 152
    object ADD: TMenuItem
      Caption = 'ADD'
      OnClick = ADDClick
    end
  end
end
