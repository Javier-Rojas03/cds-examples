@EndUserText.label: 'Abstract entity'
define abstract entity ZAE_EXAMPLE
{
  key RequestId : abap.int4;
      @EndUserText.label: 'Acción'
      Action    : abap.char(20); // 'ACTIVATE' / 'DEACTIVATE'
      @EndUserText.label: 'Comentario'
      Text      : abap.char(100);
      @EndUserText.label: 'Prioridad'
      Priority  : abap.int1;

}
