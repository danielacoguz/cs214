-----------------------------------------------------------------------------------------------------------------------------
-- temperature_package.ads calls the Temp type and the operations
--name: Daniela Contreras
--Date: 03/20/22
--------------------------------------------------------------

package Temp_Package is

  type Temp is private;

  procedure Init(Tmp: out Temp; Degree: in Float; Scale: in Character);
  function  getDegree(Tmp: in Temp) return Float;
  function  getScale(Tmp: in Temp) return Character;
  procedure toF(Tmp: out Temp);
  procedure toC(Tmp: out Temp);
  procedure toK(Tmp: out Temp);
  procedure raiseTemp(Tmp: out Temp; Degree: in Float);
  procedure lowerTemp(Tmp: out Temp; Degree: in Float);
  function  isEqual(Tmp1: in Temp; Tmp2: in Temp) return Boolean;
  function  isLessThan(Tmp1: in Temp; Tmp2: in Temp) return Boolean;
  function  isValid(Degree: in Float; Scale: in Character) return Boolean;
  procedure readTemperature(Tmp: out Temp);
  procedure writeTemp(Tmp: in Temp);

  private

    type Temp is record
      MyDegree : Float     := 0.0;
      MyScale  : Character := 'C';
    end record;

end Temp_Package;