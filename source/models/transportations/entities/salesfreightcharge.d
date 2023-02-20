module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationSalesFreightChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationSalesFreightChargeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "accessorialChargeMasterCode": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "orderingCustomerAccountNumber": StringAttribute, //
        "effectiveStartDate": StringAttribute, //
        "effectiveEndDate": StringAttribute, //
        "deliveryTermsCode": StringAttribute, //
        "isFreightChargeIgnored": StringAttribute, //
        "warehouseId": UUIDAttribute, //
        "operationalSiteId": UUIDAttribute, //
        "transportationMethodId": UUIDAttribute, //
        "freightChargeType": StringAttribute, //
        "salesChargeCode": StringAttribute, //
        "transportationModeCode": StringAttribute, //
        "relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierServiceRelationshipId": UUIDAttribute, //
        "relationship_OrderingCustomerRelationshipId": UUIDAttribute, //
        "relationship_DeliveryTermsRelationshipId": UUIDAttribute, //
        "relationship_WarehouseRelationshipId": UUIDAttribute, //
        "relationship_OperationalSiteRelationshipId": UUIDAttribute, //
        "relationship_TransportationMethodRelationshipId": UUIDAttribute, //
        "relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "relationship_SalesChargeRelationshipId": UUIDAttribute, //
        "BackingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //

      ])
      .registerPath("transportation_salesfreightcharges");
  }
}
mixin(EntityCalls!("TransportationSalesFreightChargeEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationSalesFreightChargeEntity);
  
    auto entity = TransportationSalesFreightChargeEntity;
    // TODO more tests
  }
}