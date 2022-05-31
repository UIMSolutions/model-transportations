module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationLateShipReasonEntity : DOOPEntity {
  mixin(EntityThis!("TransportationLateShipReasonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "reasonCode": StringAttribute, //
        "reasonDescription": StringAttribute, //
        "backingTable_TMSLateShipReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_lateshipreasons");
  }
}
mixin(EntityCalls!("TransportationLateShipReasonEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationLateShipReasonEntity);
  
    auto entity = TransportationLateShipReasonEntity;
    // TODO more tests
  }
}