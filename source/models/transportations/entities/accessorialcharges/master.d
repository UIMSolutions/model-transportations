module models.transportations.entities.accessorialchargemaster;

@safe:
import models.transportations;

class DTransportationAccessorialChargeMasterEntity : DEntity {
  mixin(EntityThis!("TransportationAccessorialChargeMasterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "masterCode": StringAttribute, //
        "chargeMasterType": StringAttribute, //
        "masterDescription": StringAttribute, //
        "backingTable_TMSAccessorialMasterRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
  }
}
mixin(EntityCalls!("TMSAccessorialChargeMasterEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests    
  }
}