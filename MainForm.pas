unit MainForm;

{
  ResizeEdgesSample
  ------------------
  This is a sample application demonstrating how to use ResizeEdges.pas
  to make a borderless form (bsNone) movable and resizable using visual controls.

  Usage:
    - Run the app
    - Try resizing/moving the edges of Panel1 and ListBox1
    - Click the button to close the form

  ------------------
  ResizeEdgesSample（日本語説明）
  ------------------
  このサンプルは、ResizeEdges.pas を使って、
  枠なしフォーム（bsNone）を Panel や ListBox などのビジュアルコントロールを通じて
  移動・リサイズ可能にする方法を示しています。

  使い方:
    - アプリケーションを実行します
    - Panel1 をドラッグして移動できることを確認します
    - ListBox1 の下端・左右でリサイズできることを確認します
    - ボタンを押すとアプリケーションが終了します
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private 宣言 }
    procedure SetEdges();
  public
    { Public 宣言 }
  end;

var
  FormMain: TFormMain;

implementation

uses ResizeEdges;

{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  SetEdges;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  SetEdges;
end;

procedure TFormMain.SetEdges;
begin
  TResizeEdgeHelper.MoveHandleHeight := 32;

  TResizeEdgeHelper.AttachEdges(Panel1, Panel1.Height,[rdMove,rdLeft,rdRight,rdTop]);
  TResizeEdgeHelper.AttachEdges(ListBox1, 8,[rdBottom,rdLeft,rdRight]);
end;

end.
