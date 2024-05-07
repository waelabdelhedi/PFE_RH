@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Note Frais'
define root view entity ZI_NOTEFRAIS
  as select from zpfe_notefrais
  //composition of target_data_source_name as _association_name
{

  key uuid,
      notefraisid,
      motif,
      montant,
      date_notefrais,
      mimetype,
      filename,
      @EndUserText.label: 'document'
      @Semantics.largeObject:{
          mimeType: 'mimetype',
          fileName: 'filename',
          contentDispositionPreference: #INLINE
      }
      document,
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

}
