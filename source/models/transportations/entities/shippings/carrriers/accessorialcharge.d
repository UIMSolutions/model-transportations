/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.accessorialcharge;

@safe:
import models.transportations;

class DTransportationShippingCarrierAccessorialChargeEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierAccessorialChargeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accessorialChargeMasterCode": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "chargeId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "externalChargeCode": StringAttribute, //
        "accessorialDeliveryType": StringAttribute, //
        "backingTable_TMSCarrierAccessorialRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrieraccessorialcharges");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierAccessorialChargeEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierAccessorialChargeEntity);
  
    auto entity = TransportationShippingCarrierAccessorialChargeEntity;
    // TODO more tests    
  }
}