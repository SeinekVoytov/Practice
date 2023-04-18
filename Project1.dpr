program Project1;

uses
  Vcl.Forms,
  practice in '..\Practice\practice.pas' {Form1},
  AddForm in 'AddForm.pas' {Form2},
  Lists in 'Lists.pas',
  Unit3 in 'Unit3.pas' {SearchForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TSearchForm, SearchForm);
  Application.Run;
end.
