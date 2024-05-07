@EndUserText.label: 'Projection View for Note Frais'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@UI: {
  headerInfo: {
    typeName: 'Note Frais Details',
    typeNamePlural: 'Note Frais Details',
    title: {
      type: #STANDARD,
      label: 'Note Frais Details'},
      description:{ type: #STANDARD, label: 'Note Frais Details'
    }
  }
}
define root view entity ZC_NOTEFRAIS
  provider contract transactional_query as projection on ZI_NOTEFRAIS
{
      @UI.facet: [ { id:          'Note Frais',
                 purpose:         #STANDARD,
                 type:            #IDENTIFICATION_REFERENCE,
                 label:           'Note Frais Details',
                 position:        10 } ]

   @UI : { lineItem : [ { position : 10, importance: #HIGH , label: 'uuid' }], identification: [ { position: 10,  label : 'uuid'   }]}
     key uuid,
           @UI : { lineItem : [ { position : 15, importance: #HIGH, label: 'notefraisid'} ],
      identification: [ { position: 15, label : 'notefraisid' }]}
      notefraisid,
         @UI : { lineItem : [ { position : 20, importance: #HIGH , label: 'motif' }], identification: [ { position: 20,  label : 'motif'   }]}
      motif,
     
      mimetype,
       
      filename,
         @UI : { lineItem : [ { position : 30, importance: #HIGH , label: 'document' }], identification: [ { position: 30,  label : 'document'   }]}
      document,
         @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'montant' }], identification: [ { position: 40,  label : 'montant'   }]}
      montant,
        @UI : { lineItem : [ { position : 40, importance: #HIGH , label: 'date note frais' }], identification: [ { position: 40,  label : 'date note frais'   }]}
      date_notefrais,
              @UI: { identification: [ { position: 50, label: 'created_by' } ]}
      created_by,
      @UI: { identification: [ { position: 60, label: 'created_at' } ]}
      created_at,
      @UI: { identification: [ { position: 70, label: 'last_changed_by' } ]}
      last_changed_by,
      @UI: { identification: [ { position: 80, label: 'last_changed_at' } ]}
      last_changed_at,   
            @UI.hidden: true
      lastchangedat,
      @UI.hidden: true
      locallastchangedat
}
