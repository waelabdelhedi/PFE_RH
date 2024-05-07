@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Congé'
define root view entity ZI_CONGEE as select from zpfe_congee
association to ZI_TYPE_CONGE       as _typeconge   on $projection.type = _typeconge.type
//composition of target_data_source_name as _association_name
{
    
 //   @EndUserText.label: 'mykey'
     key mykey,
// @EndUserText.label: 'congeid'
      congeid,
    //@EndUserText.label: 'type'
   // @ObjectModel.text.element: ['type']
      type,
     // @EndUserText.label: 'datedebut'
      datedebut,
   // @EndUserText.label: 'datefin'
      datefin,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,
      _typeconge
      
      }
