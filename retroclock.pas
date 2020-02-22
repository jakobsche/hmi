unit RetroClock;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs,
  DrawnControl;

type

  TClockScaleLineIndex = 0..59;

  { TClockScaleLines }

  TClockScaleLines = class(TDrawing)
  private
    FCenter: TPoint;
    FBaseLineLength: Integer;
    FRadius: Integer;
    function GetShiftFromCenter(Index: TClockScaleLineIndex): TPoint;
    function GetLineAngle(Index: TClockScaleLineIndex): Extended;
    function GetLineLength(Index: TClockScaleLineIndex): Integer;
    function GetLines(Index: TClockScaleLineIndex): TLine;
    procedure SetBaseLineLength(AValue: Integer);
    procedure SetCenter(AValue: TPoint);
    procedure SetRadius(AValue: Integer);
  protected
    procedure Resize; override;
    procedure Zoom(CP: TPoint; Factor: Extended); override;
  public
    constructor Create(AOwner: TComponent); override;
    property Center: TPoint read FCenter write SetCenter;
    property Lines[Index: TClockScaleLineIndex]: TLine read GetLines;
    property Radius: Integer read FRadius write SetRadius;
  published
    property BaseLineLength: Integer read FBaseLineLength write SetBaseLineLength;
  end;

  { TClockScale }

  TClockScale = class(TDrawing)
  private
    FCenter: TPoint;
    FClockScaleLines: TClockScaleLines;
    FRadius: Integer;
    function GetLines(Index: TClockScaleLineIndex): TLine;
    procedure SetCenter(AValue: TPoint);
    procedure SetRadius(AValue: Integer);
    property ClockScaleLines: TClockScaleLines read FClockScaleLines write FClockScaleLines;
  protected
    procedure Resize; override;
    procedure Shift(V: TPoint); override;
  public
    constructor Create(AOwner: TComponent); override;
    property Center: TPoint read FCenter write SetCenter;
    property Radius: Integer read FRadius write SetRadius;
  end;

  { TClock }

  TClock = class(TDrawing)
  private
    FFrame: TRectangle;
    FCenter: TPoint;
    FDiameter: Integer;
    FHourPtr, FMinPtr, FSecPtr: TRotativePointer;
    FScale: TClockScale;
    FTime: TDateTime;
    function GetHourPtr: TRotativePointer;
    function GetMinPtr: TRotativePointer;
    function GetRadius: Integer;
    function GetScale: TClockScale;
    function GetSecPtr: TRotativePointer;
    procedure SetCenter(AValue: TPoint);
    procedure SetDiameter(AValue: Integer);
    procedure SetRadius(AValue: Integer);
  protected
    procedure Draw; override;
    procedure Resize; override;
  public
    constructor Create(AOwner: TComponent); override;
    property Center: TPoint read FCenter write SetCenter;
    property Frame: TRectangle read FFrame write FFrame;
    property Scale: TClockScale read FScale write FScale;
    property HourPtr: TRotativePointer read FHourPtr write FHourPtr;
    property MinPtr: TRotativePointer read FMinPtr write FMinPtr;
    property SecPtr: TRotativePointer read FSecPtr write FSecPtr;
    property Time: TDateTime read FTime;
  published
    property Diameter: Integer read FDiameter write SetDiameter;
    property Radius: Integer read GetRadius write SetRadius;
  end;

type
  
  { TRetroClock }

  TRetroClock = class(TDrawnControl)
  private
    function GetClock: TClock;
  protected
    class function GetDrawingClass: TDrawingClass; override;
  public
    constructor Create(AOwner: TComponent); override;
    property Clock: TClock read GetClock;
  published
    property Align;
    property Anchors;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HMI',[TRetroClock]);
end;

function Min(x, y: Integer): Integer; overload;
begin
  if x < y then Result := x else Result := y
end;

{ TClockScaleLines }

function TClockScaleLines.GetShiftFromCenter(Index: TClockScaleLineIndex): TPoint;
var
  Length, Angle: Extended;
begin
  Length := GetLineLength(Index);
  Angle := GetLineAngle(Index);
  Result.X := Round((Radius - Length) * Cos(Angle));
  Result.Y := Round((Radius - Length) * Sin(Angle));
end;

function TClockScaleLines.GetLineAngle(Index: TClockScaleLineIndex): Extended;
begin
  Result := Index / 30 * Pi - Pi / 2
end;

function TClockScaleLines.GetLineLength(Index: TClockScaleLineIndex): Integer;
begin
  Result := BaseLineLength;
  if Index mod 5 = 0 then Result := Result * 2;
  if Index mod 15 = 0 then Result := Result * 2
end;

function TClockScaleLines.GetLines(Index: TClockScaleLineIndex): TLine;
begin
  Result := Elements[Index] as TLine
end;

procedure TClockScaleLines.SetBaseLineLength(AValue: Integer);
var
  i: Integer;
  EP: TPoint;
begin
  if FBaseLineLength = AValue then Exit;
  FBaseLineLength := AValue;
  for i := Low(TClockScaleLineIndex) to Min(High(TClockScaleLineIndex), ElementCount - 1) do begin
      EP := Lines[i].EP;
      Lines[i].Length := GetLineLength(i);
      Lines[i].SP := Lines[i].SP + EP - Lines[i].EP;
  end;
end;

procedure TClockScaleLines.SetCenter(AValue: TPoint);
var
  V: TPoint;
begin
  if AValue = FCenter then Exit;
  V := AValue - FCenter;
  FCenter := AValue;
  Shift(V)
end;

procedure TClockScaleLines.SetRadius(AValue: Integer);
begin
  if FRadius=AValue then Exit;
  FRadius:=AValue;
end;

procedure TClockScaleLines.Resize;
var i: TClockScaleLineIndex;
begin
  for i := Low(TClockScaleLineIndex) to High(TClockScaleLineIndex) do begin
    Lines[i].SP := Center + GetShiftFromCenter(i);
    Lines[i].Angle:= GetLineAngle(i);
    Lines[i].Length := GetLineLength(i);
  end;
  {inherited Resize; the Elements have no own Resize procedure}
end;

procedure TClockScaleLines.Zoom(CP: TPoint; Factor: Extended);
var V: TPoint;
begin
  V := Center - CP;
  VectorZoom(V, Factor);
  Center := Center + V;
  Radius := Round(Radius * Factor);
  BaseLineLength := Round(BaseLineLength * Factor);
  Radius := Round(Radius * Factor);
  inherited Zoom(CP, Factor);
end;

constructor TClockScaleLines.Create(AOwner: TComponent);
var
  i: Integer;
  Line: TLine;
begin
  inherited Create(AOwner);
  BaseLineLength := 32;
  for i := Low(TClockScaleLineIndex) to High(TClockScaleLineIndex) do begin
    Line := TLine.Create(Self);
    Line.SP := Center + GetShiftFromCenter(i);
    Line.Angle:= -Pi / 2 + i / 30 * Pi;
    Line.Length := GetLineLength(i);
    Line.Pen.Color := clBlack;
    AddElement(Line);
  end;
end;

{ TClockScale }

procedure TClockScale.SetCenter(AValue: TPoint);
begin
  if FCenter=AValue then Exit;
  FCenter:=AValue;
end;

function TClockScale.GetLines(Index: TClockScaleLineIndex): TLine;
begin
  Result := Elements[Index] as TLine
end;

procedure TClockScale.SetRadius(AValue: Integer);
begin
  if FRadius=AValue then Exit;
  FRadius:=AValue;
end;

procedure TClockScale.Resize;
begin
  ClockScaleLines.Center := Center;
  ClockScaleLines.Radius := Radius;
  ClockScaleLines.BaseLineLength := Round(0.1 * Radius);
  inherited Resize;
end;

procedure TClockScale.Shift(V: TPoint);
begin
  Center := Center + V;
  inherited Shift(V);
end;

constructor TClockScale.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ClockScaleLines := TClockScaleLines.Create(Self);
  ClockScaleLines.Center := Center;
  ClockScaleLines.Radius := Radius;
  ClockScaleLines.BaseLineLength := Round(0.1 * Radius);
  AddElement(ClockScaleLines);
end;

{ TClock }

procedure TClock.Draw;
var
  h, min, s, ms: Word;
begin
  FTime := Now;
  DecodeTime(Time, h, min, s, ms);
  if h > 12 then h := h - 12;
  HourPtr.Angle := (h + min / 60) / 6 * Pi;
  MinPtr.Angle := min / 30 * Pi;
  SecPtr.Angle :=  s / 30 * Pi;
  inherited Draw;
end;

function TClock.GetHourPtr: TRotativePointer;
begin
  if not Assigned(FHourPtr) then begin
    FHourPtr := TRotativePointer.Create(Self);
    FHourPtr.Offset := -Pi / 2;
    AddElement(FHourPtr);
    {Resize}
  end;
  Result := FHourPtr;
end;

function TClock.GetMinPtr: TRotativePointer;
begin
  if not Assigned(FMinPtr) then begin
    FMinPtr := TRotativePointer.Create(Self);
    FMinPtr.Pen.Color := clOlive;
    FMinPtr.Offset := -Pi / 2;
    AddElement(FMinPtr);
    {Resize}
  end;
  Result := FMinPtr;
end;

function TClock.GetRadius: Integer;
begin
  Result := Diameter div 2
end;

function TClock.GetScale: TClockScale;
begin
  if not Assigned(FScale) then begin
    FScale := TClockScale.Create(Self);
    AddElement(FScale);
    {Resize;}
  end;
  Result := FScale;
end;

function TClock.GetSecPtr: TRotativePointer;
begin
  if not Assigned(FSecPtr) then begin
    FSecPtr := TRotativePointer.Create(Self);
    FSecPtr.Pen.Color := clRed;
    FSecPtr.Offset := -Pi / 2;
    AddElement(FSecPtr);
    {Resize}
  end;
  Result := FSecPtr
end;

procedure TClock.SetCenter(AValue: TPoint);
begin
  if FCenter = AValue then Exit;
  FCenter := AValue;
end;

procedure TClock.SetDiameter(AValue: Integer);
begin
  if FDiameter = AValue then Exit;
  Zoom(Center, AValue / FDiameter);
  FDiameter := AValue;
end;

procedure TClock.SetRadius(AValue: Integer);
begin
  SetDiameter(AValue * 2);
end;

procedure TClock.Resize;
begin
  Frame.Left := 0;
  Frame.Top := 0;
  Frame.Height := Control.Height;
  Frame.Width := Control.Width;
  Center := Point(Control.Width div 2, Control.Height div 2);
  Diameter := Round(0.9 * Min(Control.Width, Control.Height));
  Scale.Radius := Radius;
  Scale.Center := Center;
  HourPtr.Center := Center;
  HourPtr.Radius := Round(0.67 * 0.9 * Radius);
  MinPtr.Center := Center;
  MinPtr.Radius := Round(0.9 * Radius);
  SecPtr.Center := Center;
  SecPtr.Radius := MinPtr.Radius;
  SecPtr.Angle := 0;
  inherited Resize;
end;

constructor TClock.Create(AOwner: TComponent);
var
  MinPtrRadius, i: Integer;
begin
  inherited Create(AOwner);
  Frame := TRectangle.Create(Self);
  Frame.Brush.Color := clOlive;
  Frame.Pen.Color := $2080E0;
  Frame.Pen.Width := 8;
  AddElement(Frame);
  Scale := TClockScale.Create(Self);
  Scale.Center := Center;
  Scale.Radius := Radius;
  for i := Low(TClockScaleLineIndex) to High(TClockScaleLineIndex) do
    Scale.ClockScaleLines.Lines[i].Pen.Color := clWhite;
  AddElement(Scale);
  MinPtrRadius := Scale.ClockScaleLines.Radius - Scale.ClockScaleLines.BaseLineLength;
  HourPtr := TRotativePointer.Create(Self);
  HourPtr.Center := Scale.Center;
  HourPtr.Radius := MinPtrRadius * 3 div 3;
  HourPtr.Offset := -Pi / 2;
  HourPtr.Pen.Color := clWhite;
  AddElement(HourPtr);
  MinPtr := TRotativePointer.Create(Self);
  MinPtr.Center := Scale.Center;
  MinPtr.Radius := MinPtrRadius;
  MinPtr.Offset := -Pi / 2;
  MinPtr.Pen.Color := clYellow;
  AddElement(MinPtr);
  SecPtr := TRotativePointer.Create(Self);
  SecPtr.Center := Scale.Center;
  SecPtr.Radius := MinPtrRadius;
  SecPtr.Offset := -Pi / 2;
  SecPtr.Pen.Color := clRed;
  AddElement(SecPtr);
end;

{ TRetroClock }

function TRetroClock.GetClock: TClock;
begin
  Result := Drawing as TClock
end;

class function TRetroClock.GetDrawingClass: TDrawingClass;
begin
  Result := TClock;
end;

constructor TRetroClock.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 200;
  Height := 200;
end;

end.
