object purchase_inv_form: Tpurchase_inv_form
  Left = 0
  Top = 0
  Caption = 'purchase_inv_form'
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
    Left = 0
    Top = 0
    Width = 320
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.TPurchase_inv
    Left = 312
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 112
    object ADD: TMenuItem
      Caption = 'ADD'
    end
  end
end
