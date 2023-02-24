module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierNumberSequenceEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierNumberSequenceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "transportationGenericEngineCheckDigitCode": StringAttribute, //
        "endingSequenceNumber": StringAttribute, //
        "sequenceName": StringAttribute, //
        "nextSequenceNumber": StringAttribute, //
        "sequenceCode": StringAttribute, //
        "sequenceType": StringAttribute, //
        "sequenceSuffix": StringAttribute, //
        "sequencePrefix": StringAttribute, //
        "sequenceLength": StringAttribute, //
        "beginningSequenceNumber": StringAttribute, //
        "sequenceThreshold": StringAttribute, //
        "relationship_TransportationGenericEngineRelationshipId": UUIDAttribute, //
        "backingTable_TMSNumberSequenceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierNumberSequenceEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationShippingCarrierNumberSequenceEntity);
  
    auto entity = TransportationShippingCarrierNumberSequenceEntity;
    // TODO more tests
  }
}