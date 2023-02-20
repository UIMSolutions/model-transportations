module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationInventoryFreightChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationInventoryFreightChargeEntity"));

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
        "inventoryChargeCode": StringAttribute, //
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
        "relationship_InventoryChargeRelationshipId": UUIDAttribute, //
        "backingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_inventoryfreightcharges");
  }
}
mixin(EntityCalls!("TransportationInventoryFreightChargeEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationInventoryFreightChargeEntity);
  
    auto entity = TransportationInventoryFreightChargeEntity;
    // TODO more tests
  }
}