program ResizeEdgesSample;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  ResizeEdges in 'ResizeEdges.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
