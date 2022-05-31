module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierRatingProfileEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierRatingProfileEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "effectiveEndDateTime": StringAttribute, //
        "effectiveStartDateTime": StringAttribute, //
        "freightRateEngineId": UUIDAttribute, //
        "freightRateMasterId": UUIDAttribute, //
        "originDestinationSiteId": UUIDAttribute, //
        "originDestinationWarehouseId": UUIDAttribute, //
        "carrierFuelIndexCode": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "profileId": UUIDAttribute, //
        "profileName": StringAttribute, //
        "transportationTransitTimeEngineId": UUIDAttribute, //
        "backingTable_TMSRatingProfileRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrier.ratingprofiles");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierRatingProfileEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierRatingProfileEntity);
  
    auto entity = TransportationShippingCarrierRatingProfileEntity;
    // TODO more tests
  }
}