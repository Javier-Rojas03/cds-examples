@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Table entity'
define table entity ZTE_EXAMPLE
{
  key itemid    : sysuuid_x16;
      name      : abap.char(30);
      category  : abap.char(40);
      enumcat   : ZEN_EXAMPLE;
      price     : ZPrice;
      stock     : abap.int4;
      available : abap.char(1);
      createdat : timestampl;

}
