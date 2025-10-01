@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for hierarchy'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZH_EXAMPLE
  as select from ztable2
  association [1..*] to ZH_EXAMPLE as _Manager on $projection.Managerid = _Manager.Employeid
{
  key employeid as Employeid,
      managerid as Managerid,
      name      as Name,
      area      as Area,
      _Manager
}
