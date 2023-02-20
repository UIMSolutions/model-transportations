module models.transportations.entities.shippings.carriers.postaladdress;

@safe:
import models.transportations;

class DTransportationShippingCarrierPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierPostalAddressEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierId": UUIDAttribute, //
        "isPrimaryAddress": StringAttribute, //
        "addressLocationId": UUIDAttribute, //
        "addressDescription": StringAttribute, //
        "addressBuildingCompliment": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressCountryRegionId": UUIDAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCityInKana": StringAttribute, //
        "addressCountyId": UUIDAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLatitude": StringAttribute, //
        "addressLongitude": StringAttribute, //
        "addressPostBox": StringAttribute, //
        "addressStateId": UUIDAttribute, //
        "addressStreet": StringAttribute, //
        "addressStreetNumber": StringAttribute, //
        "addressStreetInKana": StringAttribute, //
        "addressTimezone": StringAttribute, //
        "addressValidFrom": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressLocationRoles": StringAttribute, //
        "formattedAddress": StringAttribute, //
        "shippingCarrierLegalEntityId": UUIDAttribute, //
        "location": StringAttribute, //
        "backingTable_TMSCarrierLogisticsLocationRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers.postaladdresses");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierPostalAddressEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierPostalAddressEntity);
  
    auto entity = TransportationShippingCarrierPostalAddressEntity;
    // TODO more tests
  }
}