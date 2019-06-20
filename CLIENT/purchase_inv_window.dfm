object purchase_inv_form: Tpurchase_inv_form
  Left = 0
  Top = 0
  Caption = 'purchase_inv_form'
  ClientHeight = 352
  ClientWidth = 731
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
    Width = 737
    Height = 353
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.QPurchase_inv_pretty
    Left = 312
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 112
    object ADD: TMenuItem
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      OnClick = ADDClick
    end
    object EXPORT_DOCX: TMenuItem
      Caption = #1069#1050#1057#1055#1054#1056#1058' '#1044#1054#1050#1057#1061
      OnClick = EXPORT_DOCXClick
    end
  end
end
