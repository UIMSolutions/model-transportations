module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ShippingCarrierServiceGroupId": UUIDAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingCarrierServiceId": UUIDAttribute, //
        "BackingTable_TMSCarrierGroupXRefRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservicegroupassignments");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierServiceGroupAssignmentEntity);
  
  auto entity = TransportationShippingCarrierServiceGroupAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}