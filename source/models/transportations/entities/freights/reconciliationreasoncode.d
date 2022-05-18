module models.transportations.entities.freights.reconciliationreasoncode;

@safe:
import models.transportations;

class DTransportationFreightReconciliationReasonCodeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightReconciliationReasonCodeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ReasonDescription": StringAttribute, // 
        "ReasonCode": StringAttribute, // 
        "CreditMainAccountId": UUIDAttribute, // 
        "DebitLedgerAccount": StringAttribute, // 
        "IsChargeDebitLedgerAccountOveridden": StringAttribute, // 
        "IsVendorPayingFreight": StringAttribute, // 
        "DebitLedgerAccountDisplayValue": StringAttribute, // 
        "Relationship_OffAcctLedgerDimensionCombinationRelationshipId": UUIDAttribute, // 
        "BackingTable_TMSFreightMatchReasonRelationshipId": UUIDAttribute, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("transportation_freightreconciliationreasoncodes");
  }
}
mixin(EntityCalls!("TransportationFreightReconciliationReasonCodeEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightReconciliationReasonCodeEntity);
  
  auto entity = TMSFreightReconciliationReasonCodeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}