@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZC_EXAMPLE
  provider contract transactional_query
  as projection on ZI_Example
{
  key ItemId,
      Name,
      Category,
      Price,
      Stock,
      Available,
      Createdat,
      LastChangedAt,
      IvPrice
      /* Associations */
      //_Ex2,
      //_Ex3
}
