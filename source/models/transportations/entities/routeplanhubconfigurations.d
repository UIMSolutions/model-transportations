module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationRoutePlanHubConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("TransportationRoutePlanHubConfigurationEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "transportationHubId": UUIDAttribute, //
        "invoiceAccountType": StringAttribute, //
        "payingPartyRole": StringAttribute, //
        "transportationRoutePlanId": UUIDAttribute, //
        "orderVendorAccountNumber": StringAttribute, //
        "invoiceVendorAccountNumber": StringAttribute, //
        "backingTable_TMSRouteHubConfigRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_routeplanhubconfigurations");
  }
}
mixin(EntityCalls!("TransportationRoutePlanHubConfigurationEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationRoutePlanHubConfigurationEntity);
  
    auto entity = TransportationRoutePlanHubConfigurationEntity;
    // TODO more tests
  }
}