module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierRatingProfileEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierRatingProfileEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "EffectiveEndDateTime": StringAttribute, //
        "EffectiveStartDateTime": StringAttribute, //
        "FreightRateEngineId": UUIDAttribute, //
        "FreightRateMasterId": UUIDAttribute, //
        "OriginDestinationSiteId": UUIDAttribute, //
        "OriginDestinationWarehouseId": UUIDAttribute, //
        "CarrierFuelIndexCode": StringAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ProfileId": UUIDAttribute, //
        "ProfileName": StringAttribute, //
        "TransportationTransitTimeEngineId": UUIDAttribute, //
        "BackingTable_TMSRatingProfileRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierratingprofiles");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierRatingProfileEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierRatingProfileEntity);
  
  auto entity = TransportationShippingCarrierRatingProfileEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}