@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Formation'
define root view entity ZI_FORMATION as select from zpfe_formation
//composition of target_data_source_name as _association_name
{ 
  key uuid,
      formationid,
      sujet,
      formateur,
      modalite,
      datedebut,
      datefin,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at
}
