module models.transportations.entities.freights.bills.typedetail;

@safe:
import models.transportations;

class DTransportationFreightBillTypeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "FreightEngineAssemblyName": StringAttribute, //
        "FreightEngineClassName": StringAttribute, //
        "TypeId": UUIDAttribute, //
        "BackingTable_TMSFreightBillTypeRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypes");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillTypeEntity);
  
  auto entity = TMSFreightBillTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}