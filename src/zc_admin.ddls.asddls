@EndUserText.label: 'Projection View for Administrateur'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: 'Administrateur Details',
    typeNamePlural: 'Administrateur Details',
    title: {
      type: #STANDARD,
      label: 'Administrateur Details'},
      description:{ type: #STANDARD, label: 'Administrateur Details'
    }
  }
}
define view entity ZC_ADMIN
  as projection on ZI_ADMIN
{
      @UI.facet: [ { id:          'Administrateur',
              purpose:         #STANDARD,
              type:            #IDENTIFICATION_REFERENCE,
              label:           'Administrateur Details',
              position:        10 } ]

      @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
  key uuid,
      @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'keyparent'} ],
      identification: [ { position: 15, label : 'keyparent' }]}
      keyparent,
      @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'poste' }], identification: [ { position: 20,  label : 'poste'   }]}
      poste,
      @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'date debut' }], identification: [ { position: 30,  label : 'date debut'   }]}
      datedebut,
      mimetype,
      filename,
      @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'cv' }], identification: [ { position: 40,  label : 'cv'   }]}
      cv,
      lastchangedat,
      _userS : redirected to parent ZC_USER_Stagiaire
}
