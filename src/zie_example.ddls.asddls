@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS table entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIE_EXAMPLE
  as select from ZTE_EXAMPLE
{
  key itemid    as ItemId,
      name      as Name,
      category  as Category,
      enumcat   as EnumCat,
      price     as Price,
      stock     as Stock,
      available as Available,
      createdat as CreatedAt
}
