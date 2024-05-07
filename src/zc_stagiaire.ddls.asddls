@EndUserText.label: 'Projection View for Stagiaire'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: 'Stagiaire Details',
    typeNamePlural: 'Stagiaire Details',
    title: {
      type: #STANDARD,
      label: 'Stagiaire Details'},
      description:{ type: #STANDARD, label: 'Stagiaire Details'
    }
  }
}
define view entity ZC_STAGIAIRE
  as projection on ZI_STAGIAIRE
{
      @UI.facet: [ { id:          'Stagiaire',
                  purpose:         #STANDARD,
                  type:            #IDENTIFICATION_REFERENCE,
                  label:           'Stagiaire Details',
                  position:        10 } ]

      @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
  key uuid,
      @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'keyparent'} ],
      identification: [ { position: 15, label : 'keyparent' }]}
      keyparent,
      @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'duree' }], identification: [ { position: 20,  label : 'duree'   }]}
      duree,
      @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'date debut' }], identification: [ { position: 30,  label : 'date debut'   }]}
      datedebut,
      @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'date fin' }], identification: [ { position: 40,  label : 'date fin'   }]}
      datefin,
      @UI : { lineItem : [ { position : 50, importance: #HIGH , label: 'ecole' }], identification: [ { position: 50,  label : 'ecole'   }]}
      ecole,
      @UI : { lineItem : [ { position : 60, importance: #HIGH , label: 'departement' }], identification: [ { position: 60,  label : 'departement'   }]}
      departement,
      mimetype,
      filename,
      @UI : { lineItem : [ { position : 70, importance: #HIGH , label: 'cv' }], identification: [ { position: 70,  label : 'cv'   }]}
      cv,
      lastchangedat,
      _userS : redirected to parent ZC_USER_Stagiaire
}
