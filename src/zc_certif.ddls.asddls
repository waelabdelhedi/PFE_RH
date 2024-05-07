@EndUserText.label: 'Projection View for Certification'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
  headerInfo: {
    typeName: 'Certification',
    typeNamePlural: 'Certification',
    title: {
      type: #STANDARD,
      label: 'Certification',
      value: 'certifid'
    }
  }
}
define root view entity ZC_CERTIF
  provider contract transactional_query as projection on ZI_CERTIF
{
    
@UI.facet: [ { id:              'Certification',
                purpose:         #STANDARD,
                type:            #IDENTIFICATION_REFERENCE,
                label:           'Certification',
                position:        10 } ]
                
                


      @UI: { identification: [ { position: 10, label: 'uuidcertif' } ]}
  key uuidcertif,
      @UI: { identification: [ { position: 20, label: 'certifid' } ]}
      certifid,
      @UI: { identification: [ { position: 30, label: 'nom' } ]}
      nom,
      @UI: { identification: [ { position: 40, label: 'organisme' } ]}
      organisme,
      @UI: { identification: [ { position: 50, label: 'dateobtention' } ]}
      dateobtention,
      @UI: { identification: [ { position: 60, label: 'dateexpiration' } ]}
      dateexpiration,
      @UI: { identification: [ { position: 70, label: 'description' } ]}
      description,
      @UI: { identification: [ { position: 80, label: 'liencertificat' } ]}
      liencertificat,
      @UI: { identification: [ { position: 90, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 100, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 110, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 120, label: 'last_changed_at' } ]}
      last_changed_at
      }
