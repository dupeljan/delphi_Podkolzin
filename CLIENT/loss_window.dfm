object loss_form: Tloss_form
  Left = 0
  Top = 0
  Caption = 'loss_form'
  ClientHeight = 415
  ClientWidth = 771
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
    Width = 785
    Height = 417
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.QLoss_pretty
    Left = 424
    Top = 144
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 216
    object ADD: TMenuItem
      Caption = 'ADD'
      OnClick = ADDClick
    end
  end
end
