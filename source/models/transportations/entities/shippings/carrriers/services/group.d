module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DShippingCarrierServiceGroupEntity : DOOPEntity {
  mixin(EntityThis!("ShippingCarrierServiceGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "GroupId": UUIDAttribute, //
        "GroupName": StringAttribute, //
        "BackingTable_TMSCarrierGroupRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservicegroups");
  }
}
mixin(EntityCalls!("ShippingCarrierServiceGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(ShippingCarrierServiceGroupEntity);
  
  auto entity = ShippingCarrierServiceGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}