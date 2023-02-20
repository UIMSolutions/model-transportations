module models.transportations.entities.customershippingcarriercustomeraccount;

@safe:
import models.transportations;

class DTransportationCustomerShippingCarrierCustomerAccountEntity : DOOPEntity {
  mixin(EntityThis!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "customerAccountNumber": StringAttribute, //
        "shippingCarrierCustomerAccountNumber": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "backingTable_TMSShippingCarrierCustomerAccountRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_customershippingcarriercustomeraccounts");
  }
}
mixin(EntityCalls!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationCustomerShippingCarrierCustomerAccountEntity);
  
    auto entity = TransportationCustomerShippingCarrierCustomerAccountEntity;
    // TODO more tests
  }
}