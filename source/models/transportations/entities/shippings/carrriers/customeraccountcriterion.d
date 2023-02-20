module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierCustomerAccountCriterionEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierCustomerAccountCriterionEntity"));

  override void initialize() {
    super.initialize(configSettings);

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

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierCustomerAccountCriterionEntity);
  
    auto entity = TransportationShippingCarrierCustomerAccountCriterionEntity;
    // TODO more tests
  }
}