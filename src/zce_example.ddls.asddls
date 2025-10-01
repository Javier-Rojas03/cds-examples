@EndUserText.label: 'Custom Entity Example'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_EXAMPLE'
@Metadata.allowExtensions: true
define root custom entity ZCE_EXAMPLE
{
  key id   : abap.int4;
      name : abap.char(40);
      info : abap.char(100);
}
