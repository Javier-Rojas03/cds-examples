CLASS zcl_ce_example DEFINITION
  PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
ENDCLASS.

CLASS zcl_ce_example IMPLEMENTATION.
  METHOD if_rap_query_provider~select.

    DATA lt_data TYPE TABLE OF zce_example.

    APPEND VALUE zce_example( id = 1 name = 'Demo'      info = 'Custom Entity Example' ) TO lt_data.
    APPEND VALUE zce_example( id = 2 name = 'Another Item' info = 'Generated ABAP data' ) TO lt_data.

    DATA(lv_top)  = io_request->get_paging( )->get_page_size( ).
    DATA(lv_skip) = io_request->get_paging( )->get_offset( ).

    IF lv_top > 0 OR lv_skip > 0.
      DATA(lt_paged) = lt_data.
      IF lv_skip > 0.
        DELETE lt_paged FROM 1 TO lv_skip.
      ENDIF.
      IF lv_top > 0 AND lines( lt_paged ) > lv_top.
        DELETE lt_paged FROM lv_top + 1 TO lines( lt_paged ) - lv_top.
      ENDIF.
      io_response->set_total_number_of_records( lines( lt_data ) ).
      io_response->set_data( lt_paged ).
    ELSE.
      io_response->set_total_number_of_records( lines( lt_data ) ).
      io_response->set_data( lt_data ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
