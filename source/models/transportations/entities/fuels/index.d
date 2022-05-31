module models.transportations.entities.fuels.index;

@safe:
import models.transportations;

class DTransportationFuelIndexEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFuelIndexEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "effectiveDateTime": StringAttribute, //
        "fuelIndexRegionId": UUIDAttribute, //
        "gallonPrice": StringAttribute, //
        "relationship_FuelIndexRegionRelationshipId": UUIDAttribute, //
        "backingTable_TMSFuelIndexRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_fuelindexes");
  }
}
mixin(EntityCalls!("TransportationFuelIndexEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFuelIndexEntity);
  
  auto entity = TMSFuelIndexEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}