module models.transportations.entities.carriers.fuelindexline;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexLineEntity : DOOPEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CarrierFuelIndexCode": StringAttribute, //
        "EffectiveDateTime": StringAttribute, //
        "FromGallonPrice": StringAttribute, //
        "ToGallonPrice": StringAttribute, //
        "PriceCurrencyCode": StringAttribute, //
        "AccessorialUnitPercentage": StringAttribute, //
        "FreightSurchargeFlatRate": StringAttribute, //
        "BackingTable_TMSCarrierFuelIndexLineRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexes");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexLineEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
  auto entity = TMSAccessorialChargeMasterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}