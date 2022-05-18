module models.transportations.entities.fuels.indexregions;

@safe:
import models.transportations;

class DTransportationFuelIndexRegionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFuelIndexRegionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "RegionId": UUIDAttribute, //
        "RegionName": StringAttribute, //
        "BackingTable_TMSFuelIndexRegionRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_fuelindexregions");
  }
}
mixin(EntityCalls!("TransportationFuelIndexRegionEntity"));

version(test_model_portals) {
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