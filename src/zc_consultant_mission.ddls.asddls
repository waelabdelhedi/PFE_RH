@EndUserText.label: 'Projection View for Consultant_Mission'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: 'Consultant Details',
    typeNamePlural: 'Consultant Details',
    title: {
      type: #STANDARD,
      label: 'Consultant Details'},
      description:{ type: #STANDARD, label: 'Consultant Details'
    }
  }
}
define view entity ZC_CONSULTANT_MISSION as projection on ZI_CONSULTANT_MISSION
{
     @UI.facet: [ { id:              'Consultant',
                 purpose:         #STANDARD,
                 type:            #IDENTIFICATION_REFERENCE,
                 label:           'Consultant Details',
                 position:        10 } ]

   @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
     key uuid,
           @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'keyparent'} ],
      identification: [ { position: 15, label : 'keyparent' }]}
      keyparent,
         @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'specialisation' }], identification: [ { position: 20,  label : 'specialisation'   }]}
      specialisation,
      @UI: { lineItem : [ { position : 30, importance: #HIGH , label: 'nom' } ], identification: [ { position: 30, label: 'nom' } ]}
      nom,
      @UI: { lineItem : [ { position : 40, importance: #HIGH , label: 'prenom' }], identification: [ { position: 40, label: 'prenom' } ]}
      prenom,
      @UI: { lineItem : [ { position :50, importance: #HIGH , label: 'email' } ], identification: [ { position: 50, label: 'email' } ]}
      email,
      @UI: { lineItem : [ { position :60, importance: #HIGH , label: 'telephone'}], identification: [ { position: 60, label: 'telephone' } ]}
      telephone,
     
      /*mimetype,
       
      filename,
         @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'cv' }], identification: [ { position: 30,  label : 'cv'   }]}
      cv,*/

     @UI : { lineItem : [ { position : 70, importance: #HIGH , label: 'poste' }], identification: [ { position: 70,  label : 'poste'   }]}
      poste,
         @UI : { lineItem : [ { position : 80, importance: #HIGH , label: 'niveau' }], identification: [ { position: 80,  label : 'niveau'   }]}
      niveau,
      @UI : { lineItem : [ { position : 90, importance: #HIGH , label: 'departement' }], identification: [ { position: 90,  label : 'departement'   }]}
      departement,
      lastchangedat ,
      _mission : redirected to parent ZC_MISSION   
}
