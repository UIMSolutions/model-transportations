module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierCustomerAccountCriterionEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierCustomerAccountCriterionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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

version(test_model_transportations) { unittest {
    assert(TransportationShippingCarrierCustomerAccountCriterionEntity);
  
    auto entity = TransportationShippingCarrierCustomerAccountCriterionEntity;
    // TODO more tests
  }
}