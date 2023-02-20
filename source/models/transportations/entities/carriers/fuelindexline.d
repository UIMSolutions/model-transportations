module models.transportations.entities.carriers.fuelindexline;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexLineEntity : DOOPEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "carrierFuelIndexCode": StringAttribute, //
        "effectiveDateTime": StringAttribute, //
        "fromGallonPrice": StringAttribute, //
        "toGallonPrice": StringAttribute, //
        "priceCurrencyCode": StringAttribute, //
        "accessorialUnitPercentage": StringAttribute, //
        "freightSurchargeFlatRate": StringAttribute, //
        "backingTable_TMSCarrierFuelIndexLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexlines");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexLineEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests
  }
}