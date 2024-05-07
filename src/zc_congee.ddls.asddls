@EndUserText.label: 'Projection View for Congé'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'Conge',
    typeNamePlural: 'Conge',
    title: {
      type: #STANDARD,
      label: 'Conge',
      value: 'congeid'
    }
  }
}
define root view entity ZC_CONGEE
  provider contract transactional_query as projection on ZI_CONGEE    
{
    @UI.facet: [ { id:              'Conge',
                purpose:         #STANDARD,
                type:            #IDENTIFICATION_REFERENCE,
                label:           'Conge',
                position:        10 } ]
                
                


      @UI: { identification: [ { position: 10, label: 'mykey' } ]}
  key mykey,
      @UI: { identification: [ { position: 20, label: 'congeid' } ]}
      congeid,
      @UI: { identification: [ { position: 30, label: 'type' } ]}
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZI_TYPE_CONGE', element: 'type' }  }]                                      
      type,  
      @UI: { identification: [ { position: 40, label: 'datedebut' } ]}
      datedebut,
      @UI: { identification: [ { position: 50, label: 'datefin' } ]}
      datefin,
      @UI: { identification: [ { position: 60, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 70, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 80, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 90, label: 'last_changed_at' } ]}
      last_changed_at
}
