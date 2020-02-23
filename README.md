# HMI

This is a Lazarus package containing a control, an abstract vector graphics element and a drawing class, that can be connected with the control to draw something on its canvas. There are also few descendants of TElement that draw some simple geometric shapes.

Other than raster graphic images, the drawing is always drawn with the available screen resolution and can be interactively.

An example is the control class TRetroClock with the drawing class TClock. The drawing optimizes itself to the size of the control and is animated. See the directories Test and PackageTest for example applications. PackageTest requires to install the package HMI in the IDE first. test shows, how a component can be tested, before it is installed.

