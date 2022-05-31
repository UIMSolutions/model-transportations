module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierAccessorialChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierAccessorialChargeEntity"));

  override void initialize() {
    super.initialize;

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