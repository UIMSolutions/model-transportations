module models.transportations.entities.freights.bills.typeassignment;

@safe:
import models.transportations;

class DTransportationFreightBillTypeAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ShippingCarrierId": UUIDAttribute, //
        "ProductMovementDirectionRule": StringAttribute, //
        "FreightBillTypeId": UUIDAttribute, //
        "WarehouseId": UUIDAttribute, //
        "OperationalSiteId": UUIDAttribute, //
        "TransportationModeCode": StringAttribute, //
        "BackingTable_TMSFreightBillTypeAssignmentRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypeassignments");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeAssignmentEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillTypeAssignmentEntity);
  
  auto entity = TMSFreightBillTypeAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}