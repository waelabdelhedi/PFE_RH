@EndUserText.label: 'Projection View for Role'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: ' Role Details',
    typeNamePlural: ' Role Details',
    title: {
      type: #STANDARD,
      label: ' Role Details'},
      description:{ type: #STANDARD, label: ' Role Details'
    }
  }
}
define root view entity ZC_ROLE
  provider contract transactional_query as projection on ZI_ROLE    
{
          @UI.facet: [ { id:              'Role',
                 purpose:         #STANDARD,
                 type:            #IDENTIFICATION_REFERENCE,
                 label:           'Role Details',
                 position:        10 } ]
     

   @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
     key uuid,
      @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'roleid'} ],
      identification: [ { position: 15, label : 'roleid' }]}
      roleid,
      @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'nom' }], identification: [ { position: 20,  label : 'nom'   }]}
      nom,
      @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'prenom' }], identification: [ { position: 30,  label : 'prenom'   }]}
      prenom,
      @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'poste' }], identification: [ { position: 40,  label : 'poste'   }]}
      poste,
      @UI : { lineItem : [ { position : 50, importance: #HIGH , label: 'nom role' }], identification: [ { position: 50,  label : 'nom role'   }]}
      nomrole,
      @UI : { lineItem : [ { position : 60, importance: #HIGH , label: 'niveau acces' }], identification: [ { position: 60,  label : 'niveau acces'   }]}
      niveauacces,
      @UI: { identification: [ { position: 70, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 80, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 90, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 100, label: 'last_changed_at' } ]}
      last_changed_at
}
