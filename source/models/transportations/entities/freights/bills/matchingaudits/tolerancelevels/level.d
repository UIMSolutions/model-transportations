/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.level;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "underpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "toleranceLevelId": UUIDAttribute, // 
        "maximumAuditToleranceUnitType": StringAttribute, // 
        "minimumAuditToleranceUnitType": StringAttribute, // 
        "shippingCarrierId": UUIDAttribute, // 
        "freightBillTypeId": UUIDAttribute, // 
        "warehouseId": UUIDAttribute, // 
        "operationalSiteId": UUIDAttribute, // 
        "overpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "toleranceSequenceNumber": StringAttribute, // 
        "minimumAuditToleranceAmount": StringAttribute, // 
        "minimumAuditTolerancePercentage": StringAttribute, // 
        "maximumAuditToleranceAmount": StringAttribute, // 
        "maximumAuditTolerancePercentage": StringAttribute, // 
        "backingTable_TMSAuditMasterRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("transportation_freightbillmatchingaudittolerancelevels");
  }
}
mixin(EntityCalls!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationFreightBillMatchingAuditToleranceLevelEntity);

  auto entity = TransportationFreightBillMatchingAuditToleranceLevelEntity;
    // TODO more tests
}}