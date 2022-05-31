module models.transportations.entities.freights.reconciliationreasoncode;

@safe:
import models.transportations;

class DTransportationFreightReconciliationReasonCodeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightReconciliationReasonCodeEntity"));

  override void initialize() {
    super.initialize;

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

version(test_model_transportation) {
  unittest {
    assert(TMSFreightReconciliationReasonCodeEntity);
  
    auto entity = TMSFreightReconciliationReasonCodeEntity;
    // TODO more tests
  }
}