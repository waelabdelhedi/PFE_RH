@EndUserText.label: 'Projection View for Consultant'
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
define view entity ZC_CONSULTANT as projection on ZI_CONSULTANT
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
            @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'date debut' }], identification: [ { position: 30,  label : 'date debut'   }]}
      datedebut, 
     
      mimetype,
       
      filename,
         @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'cv' }], identification: [ { position: 40,  label : 'cv'   }]}
      cv,
         @UI : { lineItem : [ { position : 50, importance: #HIGH , label: 'tauxjournalier' }], identification: [ { position: 50,  label : 'tauxjournalier'   }]}
      tauxjournalier,
     @UI : { lineItem : [ { position : 60, importance: #HIGH , label: 'poste' }], identification: [ { position: 60,  label : 'poste'   }]}
      poste,
         @UI : { lineItem : [ { position : 70, importance: #HIGH , label: 'descriptionposte' }], identification: [ { position: 70,  label : 'descriptionposte'   }]}
      descriptionposte,
         @UI : { lineItem : [ { position : 80, importance: #HIGH , label: 'niveau' }], identification: [ { position: 80,  label : 'niveau'   }]}
      niveau,
      @UI : { lineItem : [ { position : 90, importance: #HIGH , label: 'departement' }], identification: [ { position: 90,  label : 'departement'   }]}
      departement,
      lastchangedat ,
      _userS : redirected to parent ZC_USER_Stagiaire
         
}
