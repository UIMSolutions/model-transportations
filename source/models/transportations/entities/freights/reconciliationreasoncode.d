/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.reconciliationreasoncode;

@safe:
import models.transportations;

class DTransportationFreightReconciliationReasonCodeEntity : DEntity {
  mixin(EntityThis!("TransportationFreightReconciliationReasonCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reasonDescription": StringAttribute, // 
        "reasonCode": StringAttribute, // 
        "creditMainAccountId": UUIDAttribute, // 
        "debitLedgerAccount": StringAttribute, // 
        "isChargeDebitLedgerAccountOveridden": StringAttribute, // 
        "isVendorPayingFreight": StringAttribute, // 
        "debitLedgerAccountDisplayValue": StringAttribute, // 
        "relationship_OffAcctLedgerDimensionCombinationRelationshipId": UUIDAttribute, // 
        "backingTable_TMSFreightMatchReasonRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("transportation_freightreconciliationreasoncodes");
  }
}
mixin(EntityCalls!("TransportationFreightReconciliationReasonCodeEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationFreightReconciliationReasonCodeEntity);

  auto entity = TransportationFreightReconciliationReasonCodeEntity;
  // TODO more tests
}}