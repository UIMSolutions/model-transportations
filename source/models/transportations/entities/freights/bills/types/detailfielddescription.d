module models.transportations.entities.freights.bills.types.detailfielddescription;

@safe:
import models.transportations;

class DTransportationFreightBillTypeDetailEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "freightBillDetailFieldDescription": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "freightBillLineFieldName": StringAttribute, //
        "isMatchingRequired": StringAttribute, //
        "fieldSequenceNumber": StringAttribute, //
        "backingTable_TMSFreightBillTypeDetailRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypedetails");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeDetailEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightBillTypeDetailEntity);
  
    auto entity = TMSFreightBillTypeDetailEntity;
    // TODO more tests
  }
}