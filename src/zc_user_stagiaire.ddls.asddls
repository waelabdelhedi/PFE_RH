@EndUserText.label: 'Projection View for User_Stagiaire'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'User',
    typeNamePlural: 'User',
    title: {
      type: #STANDARD,
      label: 'User',
      value: 'userid'
    }
  }
}
define root view entity ZC_USER_Stagiaire provider contract transactional_query as projection on ZI_USER_Stagiaire as user_s
{
    @UI.facet: [ { id:              'User',
             purpose:         #STANDARD,
             type:            #IDENTIFICATION_REFERENCE,
             label:           'User',
             position:        10 },
            { id : 'Stagiaire',
            purpose : #STANDARD,
            type: #LINEITEM_REFERENCE,
            label: 'Stagiaire Details',
            position: 20,
            targetElement: '_Stagiaire'     },
            { id:          'Administrateur',
                 purpose:         #STANDARD,
                 type:            #LINEITEM_REFERENCE,
                 label:           'Administrateur Details',
                 position:        30,
                 targetElement: '_Admin'  },
                 {id : 'Consultant',
            purpose : #STANDARD,
            type: #LINEITEM_REFERENCE,
            label: 'Consultant Details',
            position: 40,
            targetElement: '_Consultant'     }
                ]


      @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
  key uuid,
      @UI: { lineItem : [ { position : 20, importance: #HIGH , label: 'userid' }], identification: [ { position: 20, label: 'userid' } ]}
      userid,
      @UI: { lineItem : [ { position : 30, importance: #HIGH , label: 'nom' } ], identification: [ { position: 30, label: 'nom' } ]}
      nom,
      @UI: { lineItem : [ { position : 40, importance: #HIGH , label: 'prenom' }], identification: [ { position: 40, label: 'prenom' } ]}
      prenom,
      @UI: { lineItem : [ { position :50, importance: #HIGH , label: 'datenaissance' }], identification: [ { position: 50, label: 'datenaissance' } ]}
      datenaissance,
      @UI: { lineItem : [ { position :60, importance: #HIGH ,  label: 'adresse' } ], identification: [ { position: 60, label: 'adresse' } ]}
      adresse,
      @UI: { lineItem : [ { position :70, importance: #HIGH , label: 'email' } ], identification: [ { position: 70, label: 'email' } ]}
      email,
      @UI: { lineItem : [ { position :80, importance: #HIGH , label: 'telephone'}], identification: [ { position: 80, label: 'telephone' } ]}
      telephone,
      @UI.hidden: true
      lastchangedat,
      @UI.hidden: true
      locallastchangedat,
      @UI: { identification: [ { position: 90, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 100, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 110, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 120, label: 'last_changed_at' } ]}
      last_changed_at,
      _Stagiaire : redirected to composition child ZC_STAGIAIRE,
      _Admin : redirected to composition child ZC_ADMIN,
      _Consultant : redirected to composition child ZC_CONSULTANT      
}
