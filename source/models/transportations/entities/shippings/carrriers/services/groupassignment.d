module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceGroupAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceGroupAssignmentEntity"));

  override void initialize() {
    super.initialize;

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

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierServiceGroupAssignmentEntity);
  
    auto entity = TransportationShippingCarrierServiceGroupAssignmentEntity;
    // TODO more tests
  }
}