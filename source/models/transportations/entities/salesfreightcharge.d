module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationSalesFreightChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationSalesFreightChargeEntity"));

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
        "SalesChargeCode": StringAttribute, //
        "TransportationModeCode": StringAttribute, //
        "Relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "Relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "Relationship_ShippingCarrierServiceRelationshipId": UUIDAttribute, //
        "Relationship_OrderingCustomerRelationshipId": UUIDAttribute, //
        "Relationship_DeliveryTermsRelationshipId": UUIDAttribute, //
        "Relationship_WarehouseRelationshipId": UUIDAttribute, //
        "Relationship_OperationalSiteRelationshipId": UUIDAttribute, //
        "Relationship_TransportationMethodRelationshipId": UUIDAttribute, //
        "Relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "Relationship_SalesChargeRelationshipId": UUIDAttribute, //
        "BackingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //

      ])
      .registerPath("transportation_salesfreightcharges");
  }
}
mixin(EntityCalls!("TransportationSalesFreightChargeEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationSalesFreightChargeEntity);
  
  auto entity = TransportationSalesFreightChargeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}