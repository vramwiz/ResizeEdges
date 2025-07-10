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
  ResizeEdgesSample�i���{������j
  ------------------
  ���̃T���v���́AResizeEdges.pas ���g���āA
  �g�Ȃ��t�H�[���ibsNone�j�� Panel �� ListBox �Ȃǂ̃r�W���A���R���g���[����ʂ���
  �ړ��E���T�C�Y�\�ɂ�����@�������Ă��܂��B

  �g����:
    - �A�v���P�[�V���������s���܂�
    - Panel1 ���h���b�O���Ĉړ��ł��邱�Ƃ��m�F���܂�
    - ListBox1 �̉��[�E���E�Ń��T�C�Y�ł��邱�Ƃ��m�F���܂�
    - �{�^���������ƃA�v���P�[�V�������I�����܂�
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
    { Private �錾 }
    procedure SetEdges();
  public
    { Public �錾 }
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
