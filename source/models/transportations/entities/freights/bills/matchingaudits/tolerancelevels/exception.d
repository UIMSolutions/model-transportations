module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.exception;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelExceptionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "freightBillMatchingAuditToleranceLevelId": UUIDAttribute, //
        "maximumAuditToleranceUnitType": StringAttribute, //
        "minimumAuditToleranceUnitType": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "shippingCarrierAccessorialChargeId": UUIDAttribute, //
        "transportationHubAccessorialChargeId": UUIDAttribute, //
        "maximumAuditToleranceAmount": StringAttribute, //
        "maximumAuditTolerancePercentage": StringAttribute, //
        "minimumAuditToleranceAmount": StringAttribute, //
        "minimumAuditTolerancePercentage": StringAttribute, //
        "backingTable_TMSAuditExceptionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbillmatchingaudittolerancelevelexceptions");
  }
}
mixin(EntityCalls!("TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightBillMatchingAuditToleranceLevelExceptionEntity);
  
    auto entity = TMSFreightBillMatchingAuditToleranceLevelExceptionEntity;
    // TODO more tests
  }
}