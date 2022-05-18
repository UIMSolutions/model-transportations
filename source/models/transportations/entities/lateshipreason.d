module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationLateShipReasonEntity : DOOPEntity {
  mixin(EntityThis!("TransportationLateShipReasonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ReasonCode": StringAttribute, //
        "ReasonDescription": StringAttribute, //
        "BackingTable_TMSLateShipReasonRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_lateshipreasons");
  }
}
mixin(EntityCalls!("TransportationLateShipReasonEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationLateShipReasonEntity);
  
  auto entity = TransportationLateShipReasonEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}