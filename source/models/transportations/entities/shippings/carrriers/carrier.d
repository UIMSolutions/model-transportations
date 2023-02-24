module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "isBroker": StringAttribute, //
        "isShippingCarrierActive": StringAttribute, //
        "isShippingCarrierRatingActive": StringAttribute, //
        "proNumberSequenceId": UUIDAttribute, //
        "carrierId": UUIDAttribute, //
        "carrierName": StringAttribute, //
        "standardCarrierAlphaCode": StringAttribute, //
        "shippingCarrierTrackingURL": StringAttribute, //
        "shippingCarrierWebsiteURL": StringAttribute, //
        "transportationModeId": UUIDAttribute, //
        "transportationTenderType": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "averageContainerWeight": StringAttribute, //
        "backingTable_TMSCarrierRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierEntity);
  
    auto entity = TransportationShippingCarrierEntity;
    // TODO more tests
  }
}