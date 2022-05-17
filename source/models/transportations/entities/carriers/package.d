module models.transportations.entities.carriers.fuelindex;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexEntity : DOOPEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "IndexCode": StringAttribute, //
        "IndexDescription": StringAttribute, //
        "BackingTable_TMSCarrierFuelIndexTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexes");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
  auto entity = TMSAccessorialChargeMasterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}