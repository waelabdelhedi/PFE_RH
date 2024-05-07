@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for CV Demande Emploi'          
define view entity ZI_DEMEMPLOI_ATTACHMENT
  as select from zpfe_dememp_cv
   //association to parent ZI_DEMEMPLOI as _demandeEmploi on $projection.keyparent = _demandeEmploi.uuid
  
{
  key uuid,
      keyparent,
      @EndUserText.label: 'cv'
      @Semantics.largeObject:{
          mimeType: 'mimetype',
          fileName: 'filename',
          contentDispositionPreference: #INLINE
      }
      cv,
      mimetype,
      filename,
      lastchangedat,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at
       //_demandeEmploi
}
