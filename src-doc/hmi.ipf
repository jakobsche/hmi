:userdoc.
.* This file has been created automatically by FPDoc
.* IPF output (c) 2010-2012 by Graeme Geldenhuys (graemeg@gmail.com)

:docprof toc=12345.
:title.hmi


:h1.hmi

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Chapter: Reference for unit 'DrawnControl'

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h2 name=hmi_drawncontrol. Reference for unit 'DrawnControl'




.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Used units

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:p.
:lm margin=1.
:hp2.
Used units by unit &apos.DrawnControl&apos.
:ehp2.
:lm margin=3.
.br
:p.
:ol.
:li.Classes
:li.Controls
:li.Dialogs
:li.Forms
:li.Graphics
:li.LResources
:li.System
:li.SysUtils
:eol.



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Overview

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:p.
:p.
:lm margin=1.
:hp2.
Overview
:ehp2.
.br
The unit implements a TGraphicControl class that can display a drawing on its canvas&per. The interface 
provides methods to override&comma. if the drawing is not static&comma. for example&comma. that can change&comma. if the size 
or position of the control or the time change&per. 



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: 

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_tdrawing_topic_1. 




.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Constants, types and variables

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=drawncontrolconststypesvars. Constants, types and variables



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=drawncontroltypes. Types

:p.

.* -------------------------------------------------
:h5 name=hmi_drawncontrol_tdrawingclass.TDrawingClass
:xmp.
TDrawingClass &eq. Class of TDrawing
:exmp.


The class method :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_getdrawingclass.#HMI&per.drawncontrol&per.TDrawnControl&per.GetDrawingClass:elink. uses this to say&comma. for which drawing class the control is made&per. 



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Procedures and functions

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=drawncontrolfunctions. Procedures and functions



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_register. Register


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Register
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
default



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: IDrawnControl

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_idrawncontrol. IDrawnControl




.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TCircle

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_tcircle. TCircle



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TElement descendant to add a circle to a TDrawing object:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--TCircle
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tcircle_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tcircle_center.Center:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tcircle_diameter.Diameter:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tcircle_radius.Radius:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tcircle_center. TCircle.Center


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Center : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tcircle_diameter. TCircle.Diameter


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Diameter : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tcircle_radius. TCircle.Radius


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Radius : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TDrawing

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_tdrawing. TDrawing



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TDrawing or a descendant is used to draw a graphical image for a control at runtime and context sensitive 
&lpar.not necessarily static&rpar.&per. Because such drawing is not dependent on a special graphical resolution &lpar.like 
raster graphic images&rpar.&comma. large images don&apos.t require large memory&comma. and small images can be stretched without a loss of quality &lpar.resolution&rpar.&per. 
:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--TDrawing
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_addelement.AddElement :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_destroy.Destroy :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_draw.Draw :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_resize.Resize :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_rotate.Rotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_shift.Shift :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_elementcount.ElementCount:elink. [r]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_elementlist.ElementList:elink. [r]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawing_elements.Elements:elink. [r]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_addelement. TDrawing.AddElement


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
function AddElement(AElement: TElement) : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_draw. TDrawing.Draw


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Draw;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_shift. TDrawing.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_rotate. TDrawing.Rotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Rotate(CP: TPoint; Angle: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_resize. TDrawing.Resize


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Resize;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_zoom. TDrawing.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_destroy. TDrawing.Destroy


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
destructor Destroy;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_elementcount. TDrawing.ElementCount


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property ElementCount : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_elementlist. TDrawing.ElementList


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property ElementList : TFpList
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawing_elements. TDrawing.Elements


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Elements[Index: Integer]: TElement
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TDrawnControl

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_tdrawncontrol. TDrawnControl



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
control&comma. that displays a drawn graphic on its surface:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TGraphicControl
:lm margin=5.|
+--TDrawnControl
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_getdrawing.GetDrawing :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_getdrawingclass.GetDrawingClass :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_paint.Paint :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_resize.Resize :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_setparent.SetParent :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tdrawncontrol_drawing.Drawing:elink. [r]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_getdrawing. TDrawnControl.GetDrawing


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
function GetDrawing : TDrawing
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_getdrawingclass. TDrawnControl.GetDrawingClass


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class function GetDrawingClass : TDrawingClass;  Virtual
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_paint. TDrawnControl.Paint


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Paint;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_resize. TDrawnControl.Resize


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Resize;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_setparent. TDrawnControl.SetParent


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure SetParent(NewParent: TWinControl);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tdrawncontrol_drawing. TDrawnControl.Drawing


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Drawing : TDrawing
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TElement

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_telement. TElement



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Objects of this class are usually placed on a TDrawing object&per. Because TElement is abstract&comma. it is necessary 
to derive concrete element classes from it first&per. You can use the protected methods&comma. especially class 
methods for vector handling&comma. to design&per. The design has to happen by overriding the abstract and other 
virtual methods&per. 

:p.
:lm margin=1.
:hp2.See Also:ehp2.
:lm margin=3.
.br
:link reftype=hd refid=hmi_drawncontrol_tline.#HMI&per.drawncontrol&per.TLine:elink.,
:link reftype=hd refid=hmi_drawncontrol_trectangle.#HMI&per.drawncontrol&per.TRectangle:elink.,
:link reftype=hd refid=hmi_drawncontrol_trotativepointer.#HMI&per.drawncontrol&per.TRotativePointer:elink.
:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--TElement
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_destroy.Destroy :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_getvectordirection.GetVectorDirection :elink.
:pd. calculates the angle of a vector being given in screen coordinates&per. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_getvectorlength.GetVectorLength :elink.
:pd. calculates the absolute value &lpar.length&rpar. of the given vector
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_notification.Notification :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_rotate.Rotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_setvectordirection.SetVectorDirection :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_setvectorlength.SetVectorLength :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_shift.Shift :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_vectorrotate.VectorRotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_vectorzoom.VectorZoom :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_brush.Brush:elink. [r]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_control.Control:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_telement_pen.Pen:elink. [r]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_getvectordirection. TElement.GetVectorDirection


:p.
:lm margin=1.
:hp2.Synopsis:ehp2.
.br
:lm margin=3.
calculates the angle of a vector being given in screen coordinates&per. 
:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class function GetVectorDirection(V: TPoint) : Extended
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected

:p.
:lm margin=1.
:hp2.Description:ehp2.
:lm margin=3.
.br
The angle is calculated in Radiant &lpar.rad&rpar.&per. 0 rad is the rirection of the x axis&per. 

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_getvectorlength. TElement.GetVectorLength


:p.
:lm margin=1.
:hp2.Synopsis:ehp2.
.br
:lm margin=3.
calculates the absolute value &lpar.length&rpar. of the given vector
:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class function GetVectorLength(V: TPoint) : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected

:p.
:lm margin=1.
:hp2.Description:ehp2.
:lm margin=3.
.br
The length is measured in screen units&per. It is expected&comma. that the horizontal and the vertical resolution 
are equal&per. 


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_setvectordirection. TElement.SetVectorDirection


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class procedure SetVectorDirection(var V: TPoint; Angle: Extended)
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_setvectorlength. TElement.SetVectorLength


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class procedure SetVectorLength(var V: TPoint; Length: Extended)
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_vectorrotate. TElement.VectorRotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class procedure VectorRotate(var Vec: TPoint; Angle: Extended)
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_vectorzoom. TElement.VectorZoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class procedure VectorZoom(var Vec: TPoint; Factor: Extended)
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_notification. TElement.Notification


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Notification(AComponent: TComponent; Operation: TOperation)
                      ;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_shift. TElement.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Virtual;  Abstract
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_rotate. TElement.Rotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Rotate(CP: TPoint; Angle: Extended);  Virtual;  Abstract
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_zoom. TElement.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Virtual;  Abstract
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_destroy. TElement.Destroy


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
destructor Destroy;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_brush. TElement.Brush


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Brush : TBrush
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_pen. TElement.Pen


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Pen : TPen
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_telement_control. TElement.Control


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Control : TGraphicControl
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TLine

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_tline. TLine



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
straight line that starts at SP and ends at EP:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--TLine
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_draw.Draw :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_rotate.Rotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_shift.Shift :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_angle.Angle:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_ep.EP:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_length.Length:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_tline_sp.SP:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_shift. TLine.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_rotate. TLine.Rotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Rotate(CP: TPoint; Angle: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_zoom. TLine.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_draw. TLine.Draw


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Draw;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_angle. TLine.Angle


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Angle : Extended
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_length. TLine.Length


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Length : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_sp. TLine.SP


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property SP : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_tline_ep. TLine.EP


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property EP : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TRectangle

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_trectangle. TRectangle



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TElement descendant to add a rectangle to a drawing:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--TRectangle
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_draw.Draw :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_rotate.Rotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_shift.Shift :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_height.Height:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_left.Left:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_top.Top:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trectangle_width.Width:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_draw. TRectangle.Draw


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Draw;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_rotate. TRectangle.Rotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Rotate(CP: TPoint; Angle: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_shift. TRectangle.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_zoom. TRectangle.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_height. TRectangle.Height


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Height : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_left. TRectangle.Left


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Left : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_top. TRectangle.Top


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Top : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trectangle_width. TRectangle.Width


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Width : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TRotativePointer

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_drawncontrol_trotativepointer. TRotativePointer



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pointer rotating around the point CP by changing the value of Angle:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--TRotativePointer
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_rotate.Rotate :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_shift.Shift :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_angle.Angle:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_center.Center:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_offset.Offset:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_drawncontrol_trotativepointer_radius.Radius:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_rotate. TRotativePointer.Rotate


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Rotate(CP: TPoint; Angle: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_shift. TRotativePointer.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_zoom. TRotativePointer.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_center. TRotativePointer.Center


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Center : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_angle. TRotativePointer.Angle


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Angle : Extended
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_offset. TRotativePointer.Offset


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Offset : Extended
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_drawncontrol_trotativepointer_radius. TRotativePointer.Radius


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Radius : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Chapter: Reference for unit 'HMI'

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h2 name=hmi_hmi. Reference for unit 'HMI'




.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Used units

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:p.
:lm margin=1.
:hp2.
Used units by unit &apos.HMI&apos.
:ehp2.
:lm margin=3.
.br
:p.
:ol.
:li.DrawnControl
:li.LazarusPackageIntf
:li.RetroClock
:li.System
:eol.

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Chapter: Reference for unit 'RetroClock'

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h2 name=hmi_retroclock. Reference for unit 'RetroClock'




.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Used units

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:p.
:lm margin=1.
:hp2.
Used units by unit &apos.RetroClock&apos.
:ehp2.
:lm margin=3.
.br
:p.
:ol.
:li.Classes
:li.Controls
:li.Dialogs
:li.DrawnControl
:li.Forms
:li.Graphics
:li.LResources
:li.System
:li.SysUtils
:eol.



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Constants, types and variables

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=retroclockconststypesvars. Constants, types and variables



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=retroclocktypes. Types

:p.

.* -------------------------------------------------
:h5 name=hmi_retroclock_tclockscalelineindex.TClockScaleLineIndex
:xmp.
TClockScaleLineIndex &eq. 0&per.&per.59
:exmp.






.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: Procedures and functions

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=retroclockfunctions. Procedures and functions



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_register. Register


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Register
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
default



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TClock

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_retroclock_tclock. TClock

:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--:link reftype=hd refid=hmi_drawncontrol_tdrawing.TDrawing:elink.
:lm margin=9.|
+--TClock
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclock_create.Create :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_draw.Draw :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_resize.Resize :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclock_center.Center:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_diameter.Diameter:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_frame.Frame:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_hourptr.HourPtr:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_minptr.MinPtr:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_radius.Radius:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_scale.Scale:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_secptr.SecPtr:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclock_time.Time:elink. [r]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_draw. TClock.Draw


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Draw;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_resize. TClock.Resize


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Resize;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_create. TClock.Create


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
constructor Create(AOwner: TComponent);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_center. TClock.Center


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Center : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_frame. TClock.Frame


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Frame : TRectangle
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_scale. TClock.Scale


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Scale : TClockScale
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_hourptr. TClock.HourPtr


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property HourPtr : TRotativePointer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_minptr. TClock.MinPtr


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property MinPtr : TRotativePointer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_secptr. TClock.SecPtr


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property SecPtr : TRotativePointer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_time. TClock.Time


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Time : TDateTime
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_diameter. TClock.Diameter


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Diameter : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclock_radius. TClock.Radius


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Radius : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TClockScale

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_retroclock_tclockscale. TClockScale

:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--:link reftype=hd refid=hmi_drawncontrol_tdrawing.TDrawing:elink.
:lm margin=9.|
+--TClockScale
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclockscale_create.Create :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscale_resize.Resize :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscale_shift.Shift :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclockscale_center.Center:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscale_radius.Radius:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_resize. TClockScale.Resize


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Resize;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_shift. TClockScale.Shift


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Shift(V: TPoint);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_create. TClockScale.Create


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
constructor Create(AOwner: TComponent);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_center. TClockScale.Center


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Center : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscale_radius. TClockScale.Radius


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Radius : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TClockScaleLines

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_retroclock_tclockscalelines. TClockScaleLines

:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TComponent
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_telement.TElement:elink.
:lm margin=7.|
+--:link reftype=hd refid=hmi_drawncontrol_tdrawing.TDrawing:elink.
:lm margin=9.|
+--TClockScaleLines
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_create.Create :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_resize.Resize :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_zoom.Zoom :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_baselinelength.BaseLineLength:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_center.Center:elink. [rw]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_lines.Lines:elink. [r]
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tclockscalelines_radius.Radius:elink. [rw]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_resize. TClockScaleLines.Resize


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Resize;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_zoom. TClockScaleLines.Zoom


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
procedure Zoom(CP: TPoint; Factor: Extended);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_create. TClockScaleLines.Create


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
constructor Create(AOwner: TComponent);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_center. TClockScaleLines.Center


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Center : TPoint
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_lines. TClockScaleLines.Lines


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Lines[Index: TClockScaleLineIndex]: TLine
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_radius. TClockScaleLines.Radius


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Radius : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tclockscalelines_baselinelength. TClockScaleLines.BaseLineLength


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property BaseLineLength : Integer
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read,Write



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
.* Section: TRetroClock

.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:h3 name=hmi_retroclock_tretroclock. TRetroClock

:p.
:lm margin=1.
:hp2.
Inheritance Hierarchy
:ehp2.
:lm margin=3.:xmp.TGraphicControl
:lm margin=5.|
+--:link reftype=hd refid=hmi_drawncontrol_tdrawncontrol.TDrawnControl:elink.
:lm margin=7.|
+--TRetroClock
:lm margin=1.:exmp.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_methods. Method overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tretroclock_create.Create :elink.
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tretroclock_getdrawingclass.GetDrawingClass :elink.
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_properties. Property overview


:parml tsize=30 break=none compact.
:pt. :link reftype=hd refid=hmi_retroclock_tretroclock_align.Align:elink. []
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tretroclock_anchors.Anchors:elink. []
:pd. 
:pt. :link reftype=hd refid=hmi_retroclock_tretroclock_clock.Clock:elink. [r]
:pd. 

:eparml.
:p.


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_getdrawingclass. TRetroClock.GetDrawingClass


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
class function GetDrawingClass : TDrawingClass;  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
protected


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_create. TRetroClock.Create


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
constructor Create(AOwner: TComponent);  Override
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_clock. TRetroClock.Clock


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Clock : TClock
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
public

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br
Read


.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_align. TRetroClock.Align


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Align : 
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br



.* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:h4 name=hmi_retroclock_tretroclock_anchors. TRetroClock.Anchors


:p.
:lm margin=1.
:hp2.Declaration:ehp2.
:lm margin=3.
:xmp.
Property Anchors : 
:exmp.

:p.
:lm margin=1.
:hp2.Visibility:ehp2.
:lm margin=3.
.br
published

:p.
:lm margin=1.
:hp2.Access:ehp2.
:lm margin=3.
.br



:euserdoc.

