@AccessControl.authorizationCheck: #NOT_REQUIRED

define hierarchy ZH_EXAMPLE2
  as parent child hierarchy (
    source ZH_EXAMPLE
    child to parent association _Manager
    siblings order by Employeid ascending
  )
{
    key Employeid,
    Managerid
}
