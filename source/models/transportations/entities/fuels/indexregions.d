module models.transportations.entities.fuels.indexregion;

@safe:
import models.transportations;

class DTransportationFuelIndexRegionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFuelIndexRegionEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "regionId": UUIDAttribute, //
        "regionName": StringAttribute, //
        "backingTable_TMSFuelIndexRegionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_fuelindexregions");
  }
}
mixin(EntityCalls!("TransportationFuelIndexRegionEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFuelIndexRegionEntity);
  
  auto entity = TMSFuelIndexRegionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}