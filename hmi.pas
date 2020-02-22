{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit HMI;

{$warn 5023 off : no warning about unused units}
interface

uses
  RetroClock, DrawnControl, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('RetroClock', @RetroClock.Register);
  RegisterUnit('DrawnControl', @DrawnControl.Register);
end;

initialization
  RegisterPackage('HMI', @Register);
end.
