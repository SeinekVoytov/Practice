﻿unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Lists;

type
  TSearchForm = class(TForm)
    CostFromEdit: TEdit;
    CostToEdit: TEdit;
    CostLabel: TLabel;
    CostFromLabel: TLabel;
    CostToLabel: TLabel;
    EngineComboBox: TComboBox;
    EngineLabel: TLabel;
    FuelFromLabel: TLabel;
    FuelFromEdit: TEdit;
    FuelToLabel: TLabel;
    FuelToEdit: TEdit;
    FuelLabel: TLabel;
    ReliabilityLabel: TLabel;
    ReliabilityFromLabel: TLabel;
    ReliabilityFromEdit: TEdit;
    ReliabilityToLabel: TLabel;
    ReliabilityToEdit: TEdit;
    ComfortLabel: TLabel;
    ComfortFtomLabel: TLabel;
    ComfortFromEdit: TEdit;
    ComfortToLabel: TLabel;
    ComfortToEdit: TEdit;
    ReadyButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ReadyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    Engine: TEngine;
    CostFrom, CostTo: Integer;
    ConsumptionFrom, ConsumptionTo: Real;
    ComfortFrom, ComfortTo, ReliabilityFrom, ReliabilityTo: Byte;
  end;

var
  SearchForm: TSearchForm;
  CanFormClose: Boolean;

implementation

{$R *.dfm}

  procedure TSearchForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    begin
      if (CanFormClose) then
        CanClose := True
      else
        CanClose := False;
    end;

  procedure TSearchForm.FormCreate(Sender: TObject);
    begin
      SearchForm.Caption := 'Ввод параметров поиска';
    end;

  procedure TSearchForm.ReadyButtonClick(Sender: TObject);
    Var
      SelectedValue: String;
    begin
      CanFormClose := False;
      try
        SelectedValue := EngineComboBox.Items[EngineComboBox.ItemIndex];
        if (SelectedValue = 'Бензиновый') then
          Begin
            Engine := Gasoline;
          End
        else if (SelectedValue = 'Дизельный') then
          Begin
            Engine := Diesel;
          End
        else if (SelectedValue = 'Электрический') then
          Begin
            Engine := Electric;
          End
        else
          Begin
            Engine := Default;
          End;

        SelectedValue := CostFromEdit.Text;        //1
        if (SelectedValue = '') then
          Begin
            CostFrom := 0;
          End
        else
          begin
            CostFrom := StrToInt(SelectedValue);
          end;

        SelectedValue := CostToEdit.Text;           //2
        if (SelectedValue = '') then
          Begin
            CostTo := MaxInt;
          End
        else
          begin
            CostTo := StrToInt(SelectedValue);
          end;

        SelectedValue := FuelFromEdit.Text;          //3
        if (SelectedValue = '') then
          Begin
            ConsumptionFrom := 0;
          End
        else
          begin
            ConsumptionFrom := StrToFloat(SelectedValue);
          end;

        SelectedValue := FuelToEdit.Text;            //4
        if (SelectedValue = '') then
          Begin
            ConsumptionTo := 3.40282347E+38;
          End
        else
          begin
            ConsumptionTo := StrToFloat(SelectedValue);
          end;

        SelectedValue := ReliabilityFromEdit.Text;        //5
        if (SelectedValue = '') then
          Begin
            ReliabilityFrom := 0;
          End
        else
          begin
            ReliabilityFrom := StrToInt(SelectedValue);
          end;

        SelectedValue := ReliabilityToEdit.Text;        //6
        if (SelectedValue = '') then
          Begin
            ReliabilityTo := MaxByte;
          End
        else
          begin
            ReliabilityTo := StrToInt(SelectedValue);
          end;

        SelectedValue := ComfortFromEdit.Text;        //7
        if (SelectedValue = '') then
          Begin
            ComfortFrom := 0;
          End
        else
          begin
            ComfortFrom := StrToInt(SelectedValue);
          end;

        SelectedValue := ComfortToEdit.Text;        //8
        if (SelectedValue = '') then
          Begin
            ComfortTo := 100;
          End
        else
          begin
            ComfortTo := StrToInt(SelectedValue);
          end;

        if (ComfortFrom < 0) or (ComfortTo > 100) or
           (ReliabilityFrom < 0) or (ConsumptionFrom < 0) or
            (CostFrom < 0) then
        raise Exception.Create('Error Message');
        CanFormClose := True;
        ModalResult := mrOk;
      except
        MessageDlg('Ввод некорректен',  mtError, [mbOK], 0)
      end;
    end;

end.
