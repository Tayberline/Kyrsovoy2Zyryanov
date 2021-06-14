object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 64
    Top = 64
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 176
    Top = 80
  end
end
