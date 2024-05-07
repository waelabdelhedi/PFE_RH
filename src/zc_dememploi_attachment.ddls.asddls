@EndUserText.label: 'Projection View for CV Demande Emploi'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_DEMEMPLOI_ATTACHMENT
  provider contract transactional_query as projection on ZI_DEMEMPLOI_ATTACHMENT
{
    @UI.facet: [ { id:          'Demande Emploi',
                   purpose:         #STANDARD,
                   type:            #IDENTIFICATION_REFERENCE,
                   label:           'Demande Emploi Details',
                   position:        10 } ]

      @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
  key uuid,
        @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'keyparent'} ],
      identification: [ { position: 15, label : 'keyparent' }]}
      keyparent,
      mimetype,
      filename,
      @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'cv' }], identification: [ { position: 20,  label : 'cv'   }]}
      cv,
      lastchangedat
      
      
      
      
      
      
            //_demandeEmploi : redirected to parent ZC_DEMEMPLOI
      
}
