CLASS zcl_test_load DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS load_test_data.
ENDCLASS.

CLASS zcl_test_load IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    zcl_test_load=>load_test_data( ).
  ENDMETHOD.

  METHOD load_test_data.
    DATA: lt_data TYPE STANDARD TABLE OF ztable2,
          ls_data TYPE ztable2.

    ls_data-employeid = '0008'.
    ls_data-managerid = '0003'.
    ls_data-name      = 'CEO'.
    ls_data-area      = 'Produccion'.
    APPEND ls_data TO lt_data.

    ls_data-employeid = '0007'.
    ls_data-managerid = '0003'.
    ls_data-name      = 'Gerente 1'.
    ls_data-area      = 'Produccion'.
    APPEND ls_data TO lt_data.

    ls_data-employeid = '0006'.
    ls_data-managerid = '0002'.
    ls_data-name      = 'Gerente 2'.
    ls_data-area      = 'Produccion'.
    APPEND ls_data TO lt_data.

    ls_data-employeid = '0010'.
    ls_data-managerid = '0002'.
    ls_data-name      = 'Empleado 1'.
    ls_data-area      = 'Produccion'.
    APPEND ls_data TO lt_data.

    ls_data-employeid = '0009'.
    ls_data-managerid = '0003'.
    ls_data-name      = 'Empleado 2'.
    ls_data-area      = 'Produccion'.
    APPEND ls_data TO lt_data.

    INSERT ztable2 FROM TABLE @lt_data.
    COMMIT WORK.
  ENDMETHOD.


ENDCLASS.

