unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dX, dY: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  dX := 1;
  dY := 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Shape1.Left := Shape1.Left + dX;
  if (Form1.ClientWidth - Shape1.Left <= Shape1.Width) or (Shape1.Left <= 0)
  then
    dX := -dX;

  begin
    Shape1.Top := Shape1.Top + dY;
    if (Form1.ClientHeight - Shape1.Top <= Shape1.Height) or (Shape1.Top <= 0)
    then
      dY := -dY;
  end;
end;

end.
