unit DrawnControl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs;

type

  TDrawing = class;

  { TElement }

  TElement = class(TComponent)
  private
    FBrush: TBrush;
    FPen: TPen;
    FControl: TGraphicControl;
    FDrawing: TDrawing;
    procedure Draw; virtual;
    function GetBrush: TBrush;
    function GetControl: TGraphicControl;
    function GetPen: TPen;
    procedure InitDraw; virtual;
    procedure Resize; virtual;
    procedure SetControl(AValue: TGraphicControl); virtual;
    procedure SetDrawing(AValue: TDrawing);
    property Drawing: TDrawing read FDrawing write SetDrawing;
  protected
    class function GetVectorDirection(V: TPoint): Extended;
    class function GetVectorLength(V: TPoint): Integer;
    class procedure SetVectorDirection(var V: TPoint; Angle: Extended);
    class procedure SetVectorLength(var V: TPoint; Length: Extended);
    class procedure VectorRotate(var Vec: TPoint; Angle: Extended);
    class procedure VectorZoom(var Vec: TPoint; Factor: Extended);
    procedure Notification(AComponent: TComponent; Operation: TOperation);
      override;
    procedure Shift(V: TPoint); virtual; abstract;
    procedure Rotate(CP: TPoint; Angle: Extended); virtual; abstract;
    procedure Zoom(CP: TPoint; Factor: Extended); virtual; abstract;
  public
    destructor Destroy; override;
    property Brush: TBrush read GetBrush;
    property Pen: TPen read GetPen;
    property Control: TGraphicControl read GetControl write SetControl;
  end;

  { TLine }

  TLine = class(TElement)
  private
    FEP: TPoint;
    FSP: TPoint;
    function GetAngle: Extended;
    function GetLength: Integer;
    function GetDiffVec: TPoint;
    procedure SetAngle(AValue: Extended);
    procedure SetLength(AValue: Integer);
  protected
    procedure Shift(V: TPoint); override;
    procedure Rotate(CP: TPoint; Angle: Extended); override;
    procedure Zoom(CP: TPoint; Factor: Extended); override;
    procedure Draw; override;
  public
    property Angle: Extended read GetAngle write SetAngle;
    property Length: Integer read GetLength write SetLength;
    property SP: TPoint read FSP write FSP;
    property EP: TPoint read FEP write FEP;
  end;

  { TRotativePointer }

  TRotativePointer = class(TElement)
  private
    FAngle, FOffset: Extended;
    FCenter: TPoint;
    FRadius: Integer;
    procedure Draw; override;
  protected
    procedure Rotate(CP: TPoint; Angle: Extended); override;
    procedure Shift(V: TPoint); override;
    procedure Zoom(CP: TPoint; Factor: Extended); override;
  public
    property Center: TPoint read FCenter write FCenter;
  published
    property Angle: Extended read FAngle write FAngle;
    property Offset: Extended read FOffset write FOffset;
    property Radius: Integer read FRadius write FRadius;
  end;

  { TRectangle }

  TRectangle = class(TElement)
  private
    FR: TRect;
    function GetHeight: Integer;
    function GetLeft: Integer;
    function GetTop: Integer;
    function GetWidth: Integer;
    procedure SetHeight(AValue: Integer);
    procedure SetLeft(AValue: Integer);
    procedure SetTop(AValue: Integer);
    procedure SetWidth(AValue: Integer);
  protected
    procedure Draw; override;
    procedure Zoom(CP: TPoint; Factor: Extended); override;
  published
    property Height: Integer read GetHeight write SetHeight;
    property Left: Integer read GetLeft write SetLeft;
    property Top: Integer read GetTop write SetTop;
    property Width: Integer read GetWidth write SetWidth;
  end;

  { TCircle }

  TCircle = class(TElement)
  private
    function GetDiameter: Integer;
    procedure SetDiameter(AValue: Integer);
  private
    FCenter: TPoint;
    FRadius: Integer;
    procedure Draw; override;
  public
    property Center: TPoint read FCenter write FCenter;
    property Diameter: Integer read GetDiameter write SetDiameter;
  published
    property Radius: Integer read FRadius write FRadius;
  end;

  { TDrawing }

  TDrawing = class(TElement)
  private
    FElementList: TFpList;
    function GetElementCount: Integer;
    function GetElementList: TFpList;
    function GetElements(Index: Integer): TElement;
    procedure SetControl(AValue: TGraphicControl); override;
  private
  protected
    function AddElement(AElement: TElement): Integer;
    procedure Draw; override;
    procedure Shift(V: TPoint); override;
    procedure Rotate(CP: TPoint; Angle: Extended); override;
    procedure Resize; override;
    procedure Zoom(CP: TPoint; Factor: Extended); override;
    property ElementCount: Integer read GetElementCount;
    property ElementList: TFpList read GetElementList;
    property Elements[Index: Integer]: TElement read GetElements;
  public
    destructor Destroy; override;
  end;

  TDrawingClass = class of TDrawing;

  { TDrawnControl }

  TDrawnControl = class(TGraphicControl)
  private
    FDrawing: TDrawing;
    procedure Draw;
  protected
    function GetDrawing: TDrawing;
    class function GetDrawingClass: TDrawingClass; virtual;
    procedure Paint; override;
    procedure Resize; override;
    procedure SetParent(NewParent: TWinControl); override;
  public
    property Drawing: TDrawing read GetDrawing;
  published

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HMI',[]);
end;

{ TRectangle }

procedure TRectangle.SetHeight(AValue: Integer);
begin
  FR.Height := AValue;
end;

function TRectangle.GetHeight: Integer;
begin
  Result := FR.Height;
end;

function TRectangle.GetLeft: Integer;
begin
  Result := FR.Left;
end;

function TRectangle.GetTop: Integer;
begin
  Result := FR.Top;
end;

function TRectangle.GetWidth: Integer;
begin
  Result := FR.Width;
end;

procedure TRectangle.SetLeft(AValue: Integer);
begin
  FR.Left := AValue;
end;

procedure TRectangle.SetTop(AValue: Integer);
begin
  FR.Top := AValue;
end;

procedure TRectangle.SetWidth(AValue: Integer);
begin
  FR.Width := AValue;
end;

procedure TRectangle.Draw;
begin
  inherited Draw;
  Control.Canvas.Rectangle(FR);
end;

procedure TRectangle.Zoom(CP: TPoint; Factor: Extended);
var V: TPoint;
begin
  V := FR.TopLeft - CP;
  VectorZoom(V, Factor);
  FR.TopLeft := CP + V;
  V := FR.BottomRight - CP;
  VectorZoom(V, Factor);
  FR.BottomRight := CP + V
end;

{ TDrawnControl }

procedure TDrawnControl.Draw;
begin
  Drawing.Draw
end;

function TDrawnControl.GetDrawing: TDrawing;
begin
  if not Assigned(FDrawing) then begin
    FDrawing := GetDrawingClass.Create(Self);
    FDrawing.Control := Self;
  end;
  Result := FDrawing;
end;

class function TDrawnControl.GetDrawingClass: TDrawingClass;
begin
  Result := TDrawing;
end;

procedure TDrawnControl.Paint;
begin
  inherited Paint;
  Canvas.Brush.Color := Color;
  Canvas.FillRect(ClientRect);
  Draw
end;

procedure TDrawnControl.Resize;
begin
  inherited Resize;
  Drawing.Resize;
end;

procedure TDrawnControl.SetParent(NewParent: TWinControl);
begin
  inherited SetParent(NewParent);
  if NewParent <> nil then Repaint;
end;

{ TElement }

procedure TElement.Draw;
begin
  InitDraw
end;

function TElement.GetBrush: TBrush;
begin
  if not Assigned(FBrush) then begin
    FBrush := TBrush.Create;
    FBrush.Color := clWhite
  end;
  Result := FBrush;
end;

function TElement.GetControl: TGraphicControl;
begin
  Result := FControl
end;

function TElement.GetPen: TPen;
begin
  if not Assigned(FPen) then begin
    FPen := TPen.Create;
    FPen.Color := clBlack;
  end;
  Result := FPen
end;

procedure TElement.InitDraw;
begin
  if Assigned(Control) then begin
    Control.Canvas.Pen := Pen;
    Control.Canvas.Brush := Brush
  end;
end;

procedure TElement.Resize;
begin

end;

procedure TElement.SetControl(AValue: TGraphicControl);
begin
  if FControl = AValue then Exit;
  if Assigned(FControl) then FControl.RemoveFreeNotification(Self);
  FControl := AValue;
  if Assigned(FControl) then FControl.FreeNotification(Self);
end;

procedure TElement.SetDrawing(AValue: TDrawing);
begin
  if AValue = FDrawing then Exit;
  if FDrawing <> nil then FDrawing.RemoveFreeNotification(Self);
  FDrawing := AValue;
  if FDrawing <> nil then FDrawing.FreeNotification(Self);
end;

class function TElement.GetVectorDirection(V: TPoint): Extended;
begin
  if V.X = 0 then
    if V.Y >= 0 then Result := Pi / 2
    else Result := -Pi  / 2
  else begin
    Result := ArcTan(V.Y / V.X);
    if V.X < 0 then begin
      Result := Result + Pi;
      if Result > Pi then Result := Result - 2 * Pi
      else if Result < -Pi then Result := Result + 2 * Pi
    end;
  end;
end;

class function TElement.GetVectorLength(V: TPoint): Integer;
begin
  Result := Round(Sqrt(Sqr(V.X) + Sqr(V.Y)))
end;

class procedure TElement.SetVectorDirection(var V: TPoint; Angle: Extended);
var L: Integer;
begin
  L := GetVectorLength(V);
  V.X := Round(L * Cos(Angle));
  V.Y := Round(L * Sin(Angle))
end;

class procedure TElement.SetVectorLength(var V: TPoint; Length: Extended);
var A: Extended;
begin
  A := GetVectorDirection(V);
  V.X := Round(Length * Cos(A));
  V.Y := Round(Length * Sin(A))
end;

class procedure TElement.VectorRotate(var Vec: TPoint; Angle: Extended);
begin
  SetVectorDirection(Vec, GetVectorDirection(Vec) + Angle)
end;

class procedure TElement.VectorZoom(var Vec: TPoint; Factor: Extended);
begin
  SetVectorLength(Vec, GetVectorLength(Vec) * Factor)
end;

procedure TElement.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if AComponent = FControl then
    case Operation of
      opRemove: Control := nil
    end;
end;

destructor TElement.Destroy;
begin
  FBrush.Free;
  FPen.Free;
  inherited Destroy;
end;

{ TDrawing }

function TDrawing.GetElementCount: Integer;
begin
  if Assigned(FElementList) then Result := FElementList.Count
  else Result := 0
end;

function TDrawing.GetElementList: TFpList;
begin
  if not Assigned(FElementList) then FElementList := TFpList.Create;
  Result := FElementList
end;

function TDrawing.GetElements(Index: Integer): TElement;
begin
  Pointer(Result) := ElementList[Index]
end;

procedure TDrawing.SetControl(AValue: TGraphicControl);
var
  i: Integer;
begin
  inherited SetControl(AValue);
  for i := 0 to ElementCount - 1 do Elements[i].Control := AValue
end;

function TDrawing.AddElement(AElement: TElement): Integer;
begin
  if Assigned(AElement) then
    if ElementList.IndexOf(AElement) < 0 then begin
      AElement.Control := Control;
      AElement.Drawing := Drawing;
      Result := ElementList.Add(AElement)
    end
end;

procedure TDrawing.Draw;
var
  i: Integer;
begin
  inherited Draw;
  for i := 0 to ElementCount - 1 do Elements[i].Draw
end;

procedure TDrawing.Shift(V: TPoint);
var i: Integer;
begin
  for i := 0 to ElementCount - 1 do begin
    Elements[i].Shift(V);
  end;
end;

procedure TDrawing.Rotate(CP: TPoint; Angle: Extended);
var i: Integer;
begin
  for i := 0 to ElementCount - 1 do Elements[i].Rotate(CP, Angle)
end;

procedure TDrawing.Resize;
var
  i: Integer;
begin
  for i := 0 to ElementCount - 1 do Elements[i].Resize;
end;

procedure TDrawing.Zoom(CP: TPoint; Factor: Extended);
var i: Integer;
begin
  for i := 0 to ElementCount - 1 do Elements[i].Zoom(CP, Factor);
end;

destructor TDrawing.Destroy;
begin
  FElementList.Free;
  inherited Destroy;
end;

{ TLine }

function TLine.GetAngle: Extended;
var
  V: TPoint;
begin
  V := EP - SP;
  if V.X = 0 then
    if V.Y = 0 then Result := 0
    else
      if V.Y > 0 then Result := Pi / 2
      else Result := -Pi / 2
  else begin
    Result := ArcTan(V.Y / V.X);
    if V.X < 0 then
      if V.Y = 0 then Result := Pi
      else begin
        Result := Result + Pi;
        if Result > Pi then Result := Result - 2 * Pi
        else if Result <= -Pi then Result := Result + 2 * Pi
      end;
  end;
end;

function TLine.GetLength: Integer;
begin
  Result := Round(SP.Distance(EP));
end;

function TLine.GetDiffVec: TPoint;
begin
  Result := EP - SP
end;

procedure TLine.SetAngle(AValue: Extended);
var
  V: TPoint;
begin
  V.X := Round(Length * Cos(AValue));
  V.Y := Round(Length * Sin(AValue));
  EP := SP + V
end;

procedure TLine.SetLength(AValue: Integer);
var
  V: TPoint;
begin
  V.X := Round(AValue * Cos(Angle));
  V.Y := Round(AValue * Sin(Angle));
  EP := SP + V
end;

procedure TLine.Shift(V: TPoint);
begin
  SP := SP + V;
  EP := EP + V
end;

procedure TLine.Rotate(CP: TPoint; Angle: Extended);
var
  V: TPoint;
begin
  V := EP - CP;
  VectorRotate(V, Angle);
  EP := CP + V;
  V := SP - CP;
  VectorRotate(V, Angle);
  SP := CP + V
end;

procedure TLine.Zoom(CP: TPoint; Factor: Extended);
var V: TPoint;
begin
  V := SP - CP;
  VectorZoom(V, Factor);
  SP := CP + V;
  V := EP - CP;
  VectorZoom(V, Factor);
  EP := CP + V
end;

procedure TLine.Draw;
begin
  inherited Draw;
  Control.Canvas.Line(SP, EP);
end;

{ TCircle }

function TCircle.GetDiameter: Integer;
begin
  Result := 2 * Radius;
end;

procedure TCircle.SetDiameter(AValue: Integer);
begin
  Radius := AValue div 2;
end;

procedure TCircle.Draw;
var
  R: TRect;
begin
  inherited Draw;
  if Assigned(Control) then begin
    R := Rect(Center.x - Radius, Center.y - Radius, Center.x + Radius, Center.y + Radius);
    Control.Canvas.Ellipse(R);
  end
end;

{ TRotativePointer }

procedure TRotativePointer.Draw;
var
  Tip: TPoint;
begin
  inherited Draw;
  Tip := Center + Point(Round(Radius * cos(Angle + Offset)), Round(Radius * sin(Angle + Offset)));
  Control.Canvas.Line(Center, Tip);
end;

procedure TRotativePointer.Rotate(CP: TPoint; Angle: Extended);
var V: TPoint;
begin
  V := Center - CP;
  VectorRotate(V, Angle);
  Center := CP + V;
  Offset := Offset + Angle
end;

procedure TRotativePointer.Shift(V: TPoint);
begin
  Center := Center + V
end;

procedure TRotativePointer.Zoom(CP: TPoint; Factor: Extended);
var V: TPoint;
begin
  V := Center - CP;
  SetVectorLength(V, GetVectorLength(V) * Factor);
  Center := CP + V;
  Radius := Round(Radius * Factor)
end;


end.
