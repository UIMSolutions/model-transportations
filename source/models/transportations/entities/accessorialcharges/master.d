/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.accessorialcharges.master;

@safe:
import models.transportations;

class DTransportationAccessorialChargeMasterEntity : DEntity {
  mixin(EntityThis!("TransportationAccessorialChargeMasterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "masterCode": StringAttribute, //
        "chargeMasterType": StringAttribute, //
        "masterDescription": StringAttribute, //
        "backingTable_TMSAccessorialMasterRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
  }
}
mixin(EntityCalls!("TransportationAccessorialChargeMasterEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationAccessorialChargeMasterEntity);

  auto entity = TransportationAccessorialChargeMasterEntity;
    // TODO more tests    
}}