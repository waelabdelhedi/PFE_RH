@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Demande Emploi'
define root view entity ZI_DEMEMPLOI
  as select from zpfe_dememploi
//composition  [0..*] of  ZI_DEMEMPLOI_ATTACHMENT as _CV
{

  key uuid,
      demempid,
      postesouhaite,
      experience,
      disponibilite,
      specialisation,
      lastchangedat,
      locallastchangedat,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at
        //   _CV
}
