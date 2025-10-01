CLASS lhc_Example DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Example RESULT result.

    METHODS processRequest FOR MODIFY
      IMPORTING keys FOR ACTION Example~processRequest RESULT result.

ENDCLASS.

CLASS lhc_Example IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD processRequest.

    DATA lt_update TYPE TABLE FOR UPDATE zi_example.

    LOOP AT keys ASSIGNING FIELD-SYMBOL(<k>).


      DATA(lv_new_avail) = COND #(
        WHEN <k>-%param-Action = 'ACTIVATE' AND <k>-%param-Priority > 0 THEN 'X'
        ELSE ' '
      ).

      APPEND VALUE #( %tky      = <k>-%tky
                      Available = lv_new_avail ) TO lt_update.

    ENDLOOP.

    IF lt_update IS NOT INITIAL.
      MODIFY ENTITIES OF zi_example IN LOCAL MODE
        ENTITY Example
          UPDATE FIELDS ( Available )
          WITH lt_update
        FAILED   DATA(failed_update)
        REPORTED DATA(reported_update).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
