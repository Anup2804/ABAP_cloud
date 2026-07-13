CLASS zcl_test_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    ALIASES execute FOR if_oo_adt_classrun~main.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_02 IMPLEMENTATION.

  METHOD execute.
    DATA: lt_stud  TYPE TABLE OF zstud_tab,
          lt_fees  TYPE TABLE OF zstud_fees,
          lt_dpart TYPE TABLE OF zstud_dpart.

    DATA(lv_today) = cl_abap_context_info=>get_system_date( ).

    DATA(lv_year) = lv_today+0(4).


*    lt_stud = VALUE #( ( client = sy-mandt rollno = 0003 name = 'Bupesh' fname = 'Ravi' surname = 'Kumar'
*                         standard = 06 division = 'A' adrc = 'Antilia' depart = 0001 ) ).
    lt_fees = VALUE #( ( client = sy-mandt yrs = lv_year rollno = 0002 fterm = 10000 sterm = 10000 actfees = 5000 currency = 'INR'  ) ).
*    lt_dpart = VALUE #( ( client = sy-mandt dpartid = 0002 name = 'IT' hod = 'Ravi Singh' ) ).

*    MODIFY zstud_tab from table @lt_stud.
    MODIFY zstud_fees from table @lt_fees.
*    MODIFY zstud_dpart from table @lt_dpart.

    out->write( | Data Inserted Successfully. | ).

  ENDMETHOD.
ENDCLASS.
