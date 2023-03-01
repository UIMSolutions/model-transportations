/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.services.service;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "deliveryModeCode": StringAttribute, //
        "physicalLoadTemplateId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "externalShippingCarrierServiceId": UUIDAttribute, //
        "serviceId": UUIDAttribute, //
        "serviceName": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "transportationMethodId": UUIDAttribute, //
        "loadVolumeFactor": StringAttribute, //
        "backingTable_TMSCarrierServiceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservices");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierServiceEntity);
  
    auto entity = TransportationShippingCarrierServiceEntity;
    // TODO more tests    
  }
}