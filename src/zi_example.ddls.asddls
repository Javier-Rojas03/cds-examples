@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_Example
  as select from ztablex

  //Association examples
  /*association        to parent ZI_Example2  as _Ex2  on $projection.IndexId  = _Header.IndexId
    association [0..1] to ZI_Example3         as _Ex3  on $projection.IndexId2 = _Product.IndexId2*/
{
  key itemid                                 as ItemId,
      name                                   as Name,
      category                               as Category,
      cast(price as ZPrice preserving type ) as Price,
      stock                                  as Stock,
      available                              as Available,
      @Semantics.systemDateTime.createdAt: true
      createdat                              as Createdat,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat                          as LastChangedAt,
      ZCL_EXAMPLE(iv_price => price)         as IvPrice
      /*Association examples*/
      //_Ex2,
      //_Ex3
}
