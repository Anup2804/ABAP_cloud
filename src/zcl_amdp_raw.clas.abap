CLASS zcl_amdp_raw DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_amdp_marker_hdb.
    CLASS-METHODS: cal_percentage FOR SCALAR FUNCTION zscalar_function_per.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_raw IMPLEMENTATION.

  METHOD cal_percentage BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY.

  if :im_total > 0 then
  result := ( :im_value / :im_total ) * 100;
  else
  result := 0;

  end if;
  ENDMETHOD.

ENDCLASS.
