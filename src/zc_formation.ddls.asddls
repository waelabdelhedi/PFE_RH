@EndUserText.label: 'Projection View for Formation'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'Formation',
    typeNamePlural: 'Formation',
    title: {
      type: #STANDARD,
      label: 'Formation',
      value: 'formationid'
    }
  }
}
define root view entity ZC_FORMATION
  provider contract transactional_query as projection on ZI_FORMATION
{
    @UI.facet: [ { id:              'Formation',
                purpose:         #STANDARD,
                type:            #IDENTIFICATION_REFERENCE,
                label:           'Formation',
                position:        10 } ]
                
                


      @UI: { identification: [ { position: 10, label: 'uuid' } ]}
  key uuid,
      @UI: { identification: [ { position: 20, label: 'formationid' } ]}
      formationid,
      @UI: { identification: [ { position: 30, label: 'sujet' } ]}
      sujet,
      @UI: { identification: [ { position: 40, label: 'formateur' } ]}
      formateur,
      @UI: { identification: [ { position: 50, label: 'modalite' } ]}
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZI_MOD_FORMA', element: 'modalite' }  }]     
      modalite,
      @UI: { identification: [ { position: 60, label: 'datedebut' } ]}
      datedebut,
      @UI: { identification: [ { position: 70, label: 'datefin' } ]}
      datefin,
      @UI: { identification: [ { position: 80, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 90, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 100, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 110, label: 'last_changed_at' } ]}
      last_changed_at
}
