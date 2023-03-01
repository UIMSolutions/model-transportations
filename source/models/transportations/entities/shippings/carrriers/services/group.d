/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.services.group;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "groupName": StringAttribute, //
        "backingTable_TMSCarrierGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservicegroups");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierServiceGroupEntity);
  
  auto entity = TransportationShippingCarrierServiceGroupEntity;
  // TODO more tests
  }
}