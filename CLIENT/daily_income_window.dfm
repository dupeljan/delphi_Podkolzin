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
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      OnClick = ADDClick
    end
    object EXPORTDOCX1: TMenuItem
      Caption = #1069#1050#1057#1055#1054#1056#1058' '#1044#1054#1050#1057#1061
      OnClick = EXPORTDOCX1Click
    end
  end
end
