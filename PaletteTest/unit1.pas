unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, RetroClock,
  DrawnControl;

type

  { TForm1 }

  TForm1 = class(TForm)
    RetroClock: TRetroClock;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.TimerTimer(Sender: TObject);
begin
  RetroClock.Repaint;
end;

end.

