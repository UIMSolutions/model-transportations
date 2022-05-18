module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationRoutePlanHubConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("TransportationRoutePlanHubConfigurationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "TransportationHubId": UUIDAttribute, //
        "InvoiceAccountType": StringAttribute, //
        "PayingPartyRole": StringAttribute, //
        "TransportationRoutePlanId": UUIDAttribute, //
        "OrderVendorAccountNumber": StringAttribute, //
        "InvoiceVendorAccountNumber": StringAttribute, //
        "BackingTable_TMSRouteHubConfigRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_routeplanhubconfigurations");
  }
}
mixin(EntityCalls!("TransportationRoutePlanHubConfigurationEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationRoutePlanHubConfigurationEntity);
  
  auto entity = TransportationRoutePlanHubConfigurationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}