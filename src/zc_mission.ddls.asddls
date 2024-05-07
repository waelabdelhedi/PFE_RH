@EndUserText.label: 'Projection View for Mission'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'Mission',
    typeNamePlural: 'Mission',
    title: {
      type: #STANDARD,
      label: 'Mission',
      value: 'missionid'
    }
  }
}
define root view entity ZC_MISSION   
  provider contract transactional_query
  as projection on ZI_MISSION
{
@UI.facet: [ { id:              'Mission',
                purpose:         #STANDARD,
                type:            #IDENTIFICATION_REFERENCE,
                label:           'Mission',
                position:        10 },
                { id:              'Consultant',
                 purpose:         #STANDARD,
                 type:            #LINEITEM_REFERENCE,
                 label:           'Consultant Details',
                 position:        20,
                 targetElement: '_Consultant'   } ] 
                
                


      @UI: { identification: [ { position: 10, label: 'uuid' } ]}
  key uuid,
      @UI: { identification: [ { position: 20, label: 'missionid' } ]}
      missionid,
      @UI: { identification: [ { position: 30, label: 'titre' } ]}
      titre,
      @UI: { identification: [ { position: 40, label: 'description' } ]}
      description,
      @UI: { identification: [ { position: 50, label: 'datedebut' } ]}
      datedebut,
      @UI: { identification: [ { position: 60, label: 'datefin' } ]}
      datefin,
      @UI: { identification: [ { position: 70, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 80, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 90, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 100, label: 'last_changed_at' } ]}
      last_changed_at,
      @UI.hidden: true
      lastchangedat,
      @UI.hidden: true
      locallastchangedat,
      _Consultant : redirected to composition child ZC_CONSULTANT_MISSION      
      
}
