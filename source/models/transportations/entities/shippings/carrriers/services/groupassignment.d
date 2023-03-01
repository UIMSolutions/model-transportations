/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.services.groupassignment;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupAssignmentEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierServiceGroupId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "backingTable_TMSCarrierGroupXRefRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrier.servicegroupassignments");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierServiceGroupAssignmentEntity);
  
    auto entity = TransportationShippingCarrierServiceGroupAssignmentEntity;
    // TODO more tests
  }
}