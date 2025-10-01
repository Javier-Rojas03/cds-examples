@EndUserText.label: 'Table function'
@ClientHandling.algorithm: #SESSION_VARIABLE
@ClientHandling.type: #CLIENT_DEPENDENT
@AccessControl.authorizationCheck: #NOT_REQUIRED

define table function ZTF_EXAMPLE
  returns {
    client    : abap.clnt;
    itemid    : sysuuid_x16;
    name      : abap.char(30);
    category  : abap.char(40);
    price     : abap.dec(15,2);
    stock     : abap.int4;
    available : abap.char(1);
    createdat : timestampl;
  }
  implemented by method ZCL_TF_LOW_STOCK=>GET_DATA;
