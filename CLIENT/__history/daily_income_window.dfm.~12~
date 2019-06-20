object DAILY_INCOME_FORM: TDAILY_INCOME_FORM
  Left = 0
  Top = 0
  Caption = 'DAILY_INCOME_FORM'
  ClientHeight = 441
  ClientWidth = 804
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
    Width = 809
    Height = 441
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.QDaily_income_pretty
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
    object EXPORTDOCX1: TMenuItem
      Caption = 'EXPORT_DOCX'
      OnClick = EXPORTDOCX1Click
    end
  end
end
