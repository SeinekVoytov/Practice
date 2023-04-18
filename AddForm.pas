﻿unit AddForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Lists;


type
  TForm2 = class(TForm)
    CostEdit: TEdit;
    ConsumptionEdit: TEdit;
    ReliabilityEdit: TEdit;
    ComfortEdit: TEdit;
    EngineLabel: TLabel;
    CostLabel: TLabel;
    ConsumptionLabel: TLabel;
    ReliabilityLabel: TLabel;
    ComfortLabel: TLabel;
    ReadyButton: TButton;
    EngineComboBox: TComboBox;
    ModelEdit: TEdit;
    ModelLabel: TLabel;
    BrandEdit: TEdit;
    BrandLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ReadyButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
  public
    Model, Brand: String;
    Engine: TEngine;
    Cost: Integer;
    FuelConsumption: Real;
    Reliability: Byte;
    Comfort: Byte;
  end;

var
  Form2: TForm2;
  ArrayOfEngines: array [TEngine] of String = ('', 'Бензиновый', 'Дизельный', 'Электрический');
  CanFormClose: Boolean;

implementation

{$R *.dfm}

procedure TForm2.ReadyButtonClick(Sender: TObject);
    Var
      SelectedValue: String;
    begin
      CanFormClose := False;
      try
        Brand := BrandEdit.Text;
        Model := ModelEdit.Text;
        Cost := StrToInt(CostEdit.Text);
        FuelConsumption := StrToFloat(ConsumptionEdit.Text);
        Reliability := StrToInt(ReliabilityEdit.Text);
        Comfort := StrToInt(ComfortEdit.Text);
        if (Cost <= 0) or (Reliability <= 0) or
         (Comfort <= 0)  or (Comfort > 100) or
         (FuelConsumption <= 0) or
         (BrandEdit.Visible and ((Brand = '') or (Model = ''))) then
        raise Exception.Create('Error Message');
        SelectedValue := EngineComboBox.Items[EngineComboBox.ItemIndex];
      if (SelectedValue = 'Бензиновый') then
        Begin
          Engine := Gasoline;
        End
      else if (SelectedValue = 'Дизельный') then
        Begin
          Engine := Diesel;
        End
      else
        Begin
          Engine := Electric;
        End;

        CanFormClose := True;
        ModalResult := mrOk;
        ModelEdit.Visible := True;
        BrandEdit.Visible := True;
        ModelLabel.Visible := True;
        BrandLabel.Visible := True;
      except
        MessageDlg('Ввод некорректен',  mtError, [mbOK], 0);
      end;
    end;

  procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    begin
      if (CanFormClose) then
        CanClose := True
      else
        CanClose := False;
    end;

procedure TForm2.FormCreate(Sender: TObject);
    begin
      Form2.Caption := 'Ввод параметров записи';
    end;

end.
