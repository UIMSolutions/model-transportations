module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "groupName": StringAttribute, //
        "backingTable_TMSCarrierGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservicegroups");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierServiceGroupEntity);
  
  auto entity = TransportationShippingCarrierServiceGroupEntity;
  // TODO more tests
  }
}