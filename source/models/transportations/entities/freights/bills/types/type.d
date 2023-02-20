module models.transportations.entities.freights.bills.types.type;

@safe:
import models.transportations;

class DTransportationFreightBillTypeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillTypeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "freightEngineAssemblyName": StringAttribute, //
        "freightEngineClassName": StringAttribute, //
        "typeId": UUIDAttribute, //
        "backingTable_TMSFreightBillTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypes");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightBillTypeEntity);
  
    auto entity = TMSFreightBillTypeEntity;
    // TODO more tests
  }
}