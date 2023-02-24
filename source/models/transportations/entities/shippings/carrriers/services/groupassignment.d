module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupAssignmentEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierServiceGroupId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "backingTable_TMSCarrierGroupXRefRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrier.servicegroupassignments");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierServiceGroupAssignmentEntity);
  
    auto entity = TransportationShippingCarrierServiceGroupAssignmentEntity;
    // TODO more tests
  }
}