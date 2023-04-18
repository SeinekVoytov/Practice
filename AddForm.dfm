object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 372
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object EngineLabel: TLabel
    Left = 16
    Top = 125
    Width = 75
    Height = 13
    Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
  end
  object CostLabel: TLabel
    Left = 16
    Top = 171
    Width = 54
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object ConsumptionLabel: TLabel
    Left = 16
    Top = 217
    Width = 81
    Height = 13
    Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072
  end
  object ReliabilityLabel: TLabel
    Left = 16
    Top = 263
    Width = 63
    Height = 13
    Caption = #1053#1072#1076#1077#1078#1085#1086#1089#1090#1100
  end
  object ComfortLabel: TLabel
    Left = 16
    Top = 309
    Width = 45
    Height = 13
    Caption = #1050#1086#1084#1092#1086#1088#1090
  end
  object ModelLabel: TLabel
    Left = 16
    Top = 69
    Width = 39
    Height = 13
    Caption = #1052#1086#1076#1077#1083#1100
  end
  object BrandLabel: TLabel
    Left = 16
    Top = 23
    Width = 32
    Height = 13
    Caption = #1052#1072#1088#1082#1072
  end
  object CostEdit: TEdit
    Left = 16
    Top = 190
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object ConsumptionEdit: TEdit
    Left = 16
    Top = 236
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object ReliabilityEdit: TEdit
    Left = 16
    Top = 282
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object ComfortEdit: TEdit
    Left = 16
    Top = 328
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object ReadyButton: TButton
    Left = 296
    Top = 206
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    TabOrder = 4
    OnClick = ReadyButtonClick
  end
  object EngineComboBox: TComboBox
    Left = 16
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object ModelEdit: TEdit
    Left = 16
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 6
  end
  object BrandEdit: TEdit
    Left = 16
    Top = 42
    Width = 169
    Height = 21
    TabOrder = 7
  end
end
