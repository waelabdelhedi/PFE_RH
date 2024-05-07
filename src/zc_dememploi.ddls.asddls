@EndUserText.label: 'Projection View for Demande Emploi'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: 'Demande Emploi Details',
    typeNamePlural: 'Demande Emploi Details',
    title: {
      type: #STANDARD,
      label: 'Demande Emploi Details',
       value: 'demempid'},
      description:{ type: #STANDARD, label: 'Demande Emploi Details'
    }
  }
}
define root view entity ZC_DEMEMPLOI
  provider contract transactional_query
  as projection on ZI_DEMEMPLOI
{
      @UI.facet: [ { id:          'Demande Emploi',
                   purpose:         #STANDARD,
                   type:            #IDENTIFICATION_REFERENCE,
                   label:           'Demande Emploi Details',
                   position:        10 }
                   /*{ id : 'Cv',
            purpose : #STANDARD,
            type: #LINEITEM_REFERENCE,
            label: 'Attachment Details',
            position: 20,
            targetElement: '_CV'     }*/ ]

      @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
  key uuid,
      @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'demempid'} ],
      identification: [ { position: 15, label : 'demempid' }]}
      demempid,
      @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'postesouhaite' }], identification: [ { position: 20,  label : 'postesouhaite'   }]}
      postesouhaite,
      @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'experience' }], identification: [ { position: 30,  label : 'experience'   }]}
      experience,
      @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'disponibilite' }], identification: [ { position: 40,  label : 'disponibilite'   }]}
      disponibilite,
      @UI : { lineItem : [ { position : 50, importance: #HIGH , label: 'specialisation' }], identification: [ { position: 50,  label : 'specialisation'   }]}
      specialisation,
      @UI: { identification: [ { position: 60, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 70, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 80, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 90, label: 'last_changed_at' } ]}
      last_changed_at,
      @UI.hidden: true
      lastchangedat,
      @UI.hidden: true
      locallastchangedat
      //_CV : redirected to composition child ZC_DEMEMPLOI_ATTACHMENT     
      
}
