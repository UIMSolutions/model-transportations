module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.exception;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelExceptionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "FreightBillMatchingAuditToleranceLevelId": UUIDAttribute, //
        "MaximumAuditToleranceUnitType": StringAttribute, //
        "MinimumAuditToleranceUnitType": StringAttribute, //
        "TransportationBillingGroupId": UUIDAttribute, //
        "ShippingCarrierAccessorialChargeId": UUIDAttribute, //
        "TransportationHubAccessorialChargeId": UUIDAttribute, //
        "MaximumAuditToleranceAmount": StringAttribute, //
        "MaximumAuditTolerancePercentage": StringAttribute, //
        "MinimumAuditToleranceAmount": StringAttribute, //
        "MinimumAuditTolerancePercentage": StringAttribute, //
        "BackingTable_TMSAuditExceptionRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbillmatchingaudittolerancelevelexceptions");
  }
}
mixin(EntityCalls!("TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillMatchingAuditToleranceLevelExceptionEntity);
  
  auto entity = TMSFreightBillMatchingAuditToleranceLevelExceptionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}