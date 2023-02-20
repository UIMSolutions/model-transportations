module models.transportations.entities.freights.bills.types.assignment;

@safe:
import models.transportations;

class DTransportationFreightBillTypeAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierId": UUIDAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "warehouseId": UUIDAttribute, //
        "operationalSiteId": UUIDAttribute, //
        "transportationModeCode": StringAttribute, //
        "backingTable_TMSFreightBillTypeAssignmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypeassignments");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeAssignmentEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightBillTypeAssignmentEntity);
  
    auto entity = TMSFreightBillTypeAssignmentEntity;
    // TODO more tests
  }
}