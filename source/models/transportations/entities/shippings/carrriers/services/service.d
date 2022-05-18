module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DeliveryModeCode": StringAttribute, //
        "PhysicalLoadTemplateId": UUIDAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ExternalShippingCarrierServiceId": UUIDAttribute, //
        "ServiceId": UUIDAttribute, //
        "ServiceName": StringAttribute, //
        "TransportationBillingGroupId": UUIDAttribute, //
        "TransportationMethodId": UUIDAttribute, //
        "LoadVolumeFactor": StringAttribute, //
        "BackingTable_TMSCarrierServiceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservices");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierServiceEntity);
  
  auto entity = TransportationShippingCarrierServiceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}