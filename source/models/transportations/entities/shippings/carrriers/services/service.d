module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierServiceEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierServiceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "deliveryModeCode": StringAttribute, //
        "physicalLoadTemplateId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "externalShippingCarrierServiceId": UUIDAttribute, //
        "serviceId": UUIDAttribute, //
        "serviceName": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "transportationMethodId": UUIDAttribute, //
        "loadVolumeFactor": StringAttribute, //
        "backingTable_TMSCarrierServiceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrierservices");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierServiceEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierServiceEntity);
  
    auto entity = TransportationShippingCarrierServiceEntity;
    // TODO more tests    
  }
}