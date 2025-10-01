@AbapCatalog.sqlViewName: 'ZV_HIER_CONS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy view'
@Metadata.ignorePropagatedAnnotations: true
@Analytics.query: true
@OData.hierarchy.recursiveHierarchy: [{ entity.name: 'ZH_EXAMPLE2' }]
define view ZH_EXAMPLE3
  as select from ZH_EXAMPLE
  association [0..1] to ZH_EXAMPLE2 as _Hierarchy
      on $projection.Employeid = _Hierarchy.Employeid
  
{
  key Employeid,
      Managerid,
      Name,
      Area,  
      @AnalyticsDetails.query.axis: #ROWS
      _Hierarchy
}
