module models.transportations.entities.freights.bills.types.detailfielddescription;

@safe:
import models.transportations;

class DTransportationFreightBillTypeDetailEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "FreightBillDetailFieldDescription": StringAttribute, //
        "FreightBillTypeId": UUIDAttribute, //
        "FreightBillLineFieldName": StringAttribute, //
        "IsMatchingRequired": StringAttribute, //
        "FieldSequenceNumber": StringAttribute, //
        "BackingTable_TMSFreightBillTypeDetailRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypedetails");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeDetailEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillTypeDetailEntity);
  
  auto entity = TMSFreightBillTypeDetailEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}