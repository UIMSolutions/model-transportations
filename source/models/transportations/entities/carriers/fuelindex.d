module models.transportations.entities.carriers.fuelindex;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexEntity : DEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "indexCode": StringAttribute, //
        "indexDescription": StringAttribute, //
        "backingTable_TMSCarrierFuelIndexTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexes");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexEntity"));

version(test_model_transportations) { unittest {
    assert(TMSCarrierFuelIndexEntity);
  
    auto entity = TMSCarrierFuelIndexEntity;
    // TODO more tests
  }
}