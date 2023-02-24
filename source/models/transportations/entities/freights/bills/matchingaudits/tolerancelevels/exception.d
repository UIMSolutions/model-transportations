module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.exception;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelExceptionEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

version(test_model_transportations) { unittest {
    assert(TMSFreightBillMatchingAuditToleranceLevelExceptionEntity);
  
    auto entity = TMSFreightBillMatchingAuditToleranceLevelExceptionEntity;
    // TODO more tests
  }
}