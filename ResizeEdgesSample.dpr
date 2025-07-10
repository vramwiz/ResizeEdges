program ResizeEdgesSample;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  ResizeEdges in 'ResizeEdges.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
