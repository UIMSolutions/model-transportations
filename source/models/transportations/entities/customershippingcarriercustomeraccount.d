module models.transportations.entities.customershippingcarriercustomeraccount;

@safe:
import models.transportations;

class DTransportationCustomerShippingCarrierCustomerAccountEntity : DOOPEntity {
  mixin(EntityThis!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CustomerAccountNumber": StringAttribute, //
        "ShippingCarrierCustomerAccountNumber": StringAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "BackingTable_TMSShippingCarrierCustomerAccountRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_customershippingcarriercustomeraccounts");
  }
}
mixin(EntityCalls!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationCustomerShippingCarrierCustomerAccountEntity);
  
  auto entity = TransportationCustomerShippingCarrierCustomerAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}