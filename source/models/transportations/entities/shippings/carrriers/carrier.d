module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "IsBroker": StringAttribute, //
        "IsShippingCarrierActive": StringAttribute, //
        "IsShippingCarrierRatingActive": StringAttribute, //
        "ProNumberSequenceId": UUIDAttribute, //
        "CarrierId": UUIDAttribute, //
        "CarrierName": StringAttribute, //
        "StandardCarrierAlphaCode": StringAttribute, //
        "ShippingCarrierTrackingURL": StringAttribute, //
        "ShippingCarrierWebsiteURL": StringAttribute, //
        "TransportationModeId": UUIDAttribute, //
        "TransportationTenderType": StringAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "AverageContainerWeight": StringAttribute, //
        "BackingTable_TMSCarrierRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierEntity);
  
  auto entity = TransportationShippingCarrierEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}