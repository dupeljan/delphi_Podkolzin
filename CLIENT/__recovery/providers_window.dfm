object PROVIDERS_FORM: TPROVIDERS_FORM
  Left = 0
  Top = 0
  Caption = 'PROVIDERS_FORM'
  ClientHeight = 321
  ClientWidth = 650
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
    Left = 0
    Top = 0
    Width = 505
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 144
    object ADD1: TMenuItem
      Caption = 'ADD'
      OnClick = ADD1Click
    end
    object DELETE: TMenuItem
      Caption = 'DELETE'
      OnClick = DELETEClick
    end
    object EDIT: TMenuItem
      Caption = 'EDIT'
      OnClick = EDITClick
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      OnClick = EXIT1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.TProvider
    Left = 112
    Top = 128
  end
end
