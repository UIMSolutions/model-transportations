module models.transportations.entities.accessorialchargemaster;

@safe:
import models.transportations;

class DTransportationAccessorialChargeMasterEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAccessorialChargeMasterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "MasterCode": StringAttribute, //
        "ChargeMasterType": StringAttribute, //
        "MasterDescription": StringAttribute, //
        "BackingTable_TMSAccessorialMasterRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
  }
}
mixin(EntityCalls!("TMSAccessorialChargeMasterEntity"));

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