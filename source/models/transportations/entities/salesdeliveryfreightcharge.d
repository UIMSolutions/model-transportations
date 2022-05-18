module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationSalesDeliveryFreightChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationSalesDeliveryFreightChargeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AccessorialChargeMasterCode": StringAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingCarrierServiceId": UUIDAttribute, //
        "OrderingCustomerAccountNumber": StringAttribute, //
        "EffectiveStartDate": StringAttribute, //
        "EffectiveEndDate": StringAttribute, //
        "DeliveryTermsCode": StringAttribute, //
        "IsFreightChargeIgnored": StringAttribute, //
        "WarehouseId": UUIDAttribute, //
        "OperationalSiteId": UUIDAttribute, //
        "TransportationMethodId": UUIDAttribute, //
        "FreightChargeType": StringAttribute, //
        "SalesDeliveryChargeCode": StringAttribute, //
        "TransportationModeCode": StringAttribute, //
        "FreightChargeCategoryType": StringAttribute, //
        "Relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "Relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "Relationship_ShippingCarrierServiceRelationshipId": UUIDAttribute, //
        "Relationship_OrderingCustomerRelationshipId": UUIDAttribute, //
        "Relationship_DeliveryTermsRelationshipId": UUIDAttribute, //
        "Relationship_WarehouseRelationshipId": UUIDAttribute, //
        "Relationship_OperationalSiteRelationshipId": UUIDAttribute, //
        "Relationship_TransportationMethodRelationshipId": UUIDAttribute, //
        "Relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "Relationship_SalesDeliveryChargeRelationshipId": UUIDAttribute, //
        "BackingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_salesdeliveryfreightcharges");
  }
}
mixin(EntityCalls!("TransportationSalesDeliveryFreightChargeEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationSalesDeliveryFreightChargeEntity);
  
  auto entity = TransportationSalesDeliveryFreightChargeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}