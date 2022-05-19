module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupEntity"));

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
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierServiceGroupEntity);
  
  auto entity = TransportationShippingCarrierServiceGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}