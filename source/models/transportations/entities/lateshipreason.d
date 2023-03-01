/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationLateShipReasonEntity : DEntity {
  mixin(EntityThis!("TransportationLateShipReasonEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reasonCode": StringAttribute, //
        "reasonDescription": StringAttribute, //
        "backingTable_TMSLateShipReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_lateshipreasons");
  }
}
mixin(EntityCalls!("TransportationLateShipReasonEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationLateShipReasonEntity);
  
    auto entity = TransportationLateShipReasonEntity;
    // TODO more tests
  }
}