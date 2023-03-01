/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
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
    assert(TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity);
  
    auto entity = TransportationFreightBillMatchingAuditToleranceLevelExceptionEntity;
    // TODO more tests
  }
}