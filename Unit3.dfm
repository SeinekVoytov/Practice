object SearchForm: TSearchForm
  Left = 0
  Top = 0
  Caption = 'SearchForm'
  ClientHeight = 296
  ClientWidth = 355
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
  object CostLabel: TLabel
    Left = 45
    Top = 69
    Width = 70
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1094#1077#1085#1091
  end
  object CostFromLabel: TLabel
    Left = 25
    Top = 91
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object CostToLabel: TLabel
    Left = 172
    Top = 91
    Width = 13
    Height = 13
    Caption = #1076#1086
  end
  object EngineLabel: TLabel
    Left = 45
    Top = 23
    Width = 128
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
  end
  object FuelFromLabel: TLabel
    Left = 25
    Top = 139
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object FuelToLabel: TLabel
    Left = 172
    Top = 139
    Width = 13
    Height = 13
    Caption = #1076#1086
  end
  object FuelLabel: TLabel
    Left = 45
    Top = 117
    Width = 127
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072
  end
  object ReliabilityLabel: TLabel
    Left = 45
    Top = 163
    Width = 221
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1083#1077#1090' '#1085#1072#1076#1077#1078#1085#1086#1081' '#1088#1072#1073#1086#1090#1099
  end
  object ReliabilityFromLabel: TLabel
    Left = 25
    Top = 182
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object ReliabilityToLabel: TLabel
    Left = 172
    Top = 182
    Width = 13
    Height = 13
    Caption = #1076#1086
  end
  object ComfortLabel: TLabel
    Left = 45
    Top = 206
    Width = 167
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1084#1092#1086#1088#1090#1085#1086#1089#1090#1100' '#1074' '#1073#1072#1083#1083#1072#1093
  end
  object ComfortFtomLabel: TLabel
    Left = 25
    Top = 225
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object ComfortToLabel: TLabel
    Left = 172
    Top = 225
    Width = 13
    Height = 13
    Caption = #1076#1086
  end
  object CostFromEdit: TEdit
    Left = 45
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object CostToEdit: TEdit
    Left = 191
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EngineComboBox: TComboBox
    Left = 45
    Top = 42
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object FuelFromEdit: TEdit
    Left = 45
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object FuelToEdit: TEdit
    Left = 191
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ReliabilityFromEdit: TEdit
    Left = 45
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object ReliabilityToEdit: TEdit
    Left = 191
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ComfortFromEdit: TEdit
    Left = 45
    Top = 222
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ComfortToEdit: TEdit
    Left = 191
    Top = 222
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object ReadyButton: TButton
    Left = 137
    Top = 249
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    TabOrder = 9
    OnClick = ReadyButtonClick
  end
end
