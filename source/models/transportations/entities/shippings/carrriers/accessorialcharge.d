module models.transportations.entities.shippings.carriers;

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

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierAccessorialChargeEntity);
  
    auto entity = TransportationShippingCarrierAccessorialChargeEntity;
    // TODO more tests    
  }
}