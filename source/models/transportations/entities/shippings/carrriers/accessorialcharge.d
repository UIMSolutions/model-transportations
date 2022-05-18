module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierAccessorialChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierAccessorialChargeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AccessorialChargeMasterCode": StringAttribute, //
        "TransportationBillingGroupId": UUIDAttribute, //
        "ChargeId": UUIDAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingCarrierServiceId": UUIDAttribute, //
        "ExternalChargeCode": StringAttribute, //
        "AccessorialDeliveryType": StringAttribute, //
        "BackingTable_TMSCarrierAccessorialRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrieraccessorialcharges");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierAccessorialChargeEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierAccessorialChargeEntity);
  
  auto entity = TransportationShippingCarrierAccessorialChargeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}