module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierCustomerAccountCriterionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierCustomerAccountCriterionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ShippingCarrierServiceId": UUIDAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingSiteId": UUIDAttribute, //
        "ShippingWarehouseId": UUIDAttribute, //
        "ShippingCarrierCustomerAccountNumber": StringAttribute, //
        "BackingTable_TMSShippingCarrierCustomerAccountCriteriaRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //

      ])
      .registerPath("transportation_shippingcarriercustomeraccountcriterions");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierCustomerAccountCriterionEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierCustomerAccountCriterionEntity);
  
  auto entity = TransportationShippingCarrierCustomerAccountCriterionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}