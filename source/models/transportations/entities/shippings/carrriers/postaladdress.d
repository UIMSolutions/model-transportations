module models.transportations.entities.shippings.carriers.postaladdress;

@safe:
import models.transportations;

class DTransportationShippingCarrierPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierPostalAddressEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ShippingCarrierId": UUIDAttribute, //
        "IsPrimaryAddress": StringAttribute, //
        "AddressLocationId": UUIDAttribute, //
        "AddressDescription": StringAttribute, //
        "AddressBuildingCompliment": StringAttribute, //
        "AddressCity": StringAttribute, //
        "AddressCountryRegionId": UUIDAttribute, //
        "AddressCountryRegionISOCode": StringAttribute, //
        "AddressCityInKana": StringAttribute, //
        "AddressCountyId": UUIDAttribute, //
        "AddressDistrictName": StringAttribute, //
        "AddressLatitude": StringAttribute, //
        "AddressLongitude": StringAttribute, //
        "AddressPostBox": StringAttribute, //
        "AddressStateId": UUIDAttribute, //
        "AddressStreet": StringAttribute, //
        "AddressStreetNumber": StringAttribute, //
        "AddressStreetInKana": StringAttribute, //
        "AddressTimezone": StringAttribute, //
        "AddressValidFrom": StringAttribute, //
        "AddressValidTo": StringAttribute, //
        "AddressZipCode": StringAttribute, //
        "AddressLocationRoles": StringAttribute, //
        "FormattedAddress": StringAttribute, //
        "ShippingCarrierLegalEntityId": UUIDAttribute, //
        "Location": StringAttribute, //
        "BackingTable_TMSCarrierLogisticsLocationRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierPostalAddressEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierPostalAddressEntity);
  
  auto entity = TransportationShippingCarrierPostalAddressEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}