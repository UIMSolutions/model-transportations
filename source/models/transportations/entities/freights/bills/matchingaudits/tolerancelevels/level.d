module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.level;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "UnderpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "ToleranceLevelId": UUIDAttribute, // 
        "MaximumAuditToleranceUnitType": StringAttribute, // 
        "MinimumAuditToleranceUnitType": StringAttribute, // 
        "ShippingCarrierId": UUIDAttribute, // 
        "FreightBillTypeId": UUIDAttribute, // 
        "WarehouseId": UUIDAttribute, // 
        "OperationalSiteId": UUIDAttribute, // 
        "OverpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "ToleranceSequenceNumber": StringAttribute, // 
        "MinimumAuditToleranceAmount": StringAttribute, // 
        "MinimumAuditTolerancePercentage": StringAttribute, // 
        "MaximumAuditToleranceAmount": StringAttribute, // 
        "MaximumAuditTolerancePercentage": StringAttribute, // 
        "BackingTable_TMSAuditMasterRelationshipId": UUIDAttribute, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("transportation_freightbillmatchingaudittolerancelevels");
  }
}
mixin(EntityCalls!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillMatchingAuditToleranceLevelEntity);
  
  auto entity = TMSFreightBillMatchingAuditToleranceLevelEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}