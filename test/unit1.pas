unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, RetroClock;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private

  public
    RetroClock: TRetroClock;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  RetroClock := TRetroClock.Create(Self);
  RetroClock.Parent := Self;
  RetroClock.Anchors := [akTop, akLeft, akRight, akBottom];
  RetroClock.BorderSpacing.Around := 4;
end;

procedure TForm1.TimerTimer(Sender: TObject);
begin
  Panel1.Caption := Format('Clock.Scale.Radius = %d', [RetroClock.Clock.Scale.Radius]);
  RetroClock.Repaint;
end;

end.

