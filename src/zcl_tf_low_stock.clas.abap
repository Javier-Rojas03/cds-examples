CLASS ZCL_TF_LOW_STOCK DEFINITION
  PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES IF_AMDP_MARKER_HDB.

    CLASS-METHODS get_data
      FOR TABLE FUNCTION ZTF_EXAMPLE.
ENDCLASS.


CLASS ZCL_TF_LOW_STOCK IMPLEMENTATION.
  METHOD get_data BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING ztablex.

    RETURN SELECT client,
                  itemid,
                  name,
                  category,
                  price,
                  stock,
                  available,
                  createdat
           FROM ztablex
           WHERE stock < 50;

  ENDMETHOD.
ENDCLASS.


