module models.transportations.entities.shippings.carriers;

@safe:
import models.transportations;

class DTransportationShippingCarrierNumberSequenceEntity : DOOPEntity {
  mixin(EntityThis!("TransportationShippingCarrierNumberSequenceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "TransportationGenericEngineCheckDigitCode": StringAttribute, //
        "EndingSequenceNumber": StringAttribute, //
        "SequenceName": StringAttribute, //
        "NextSequenceNumber": StringAttribute, //
        "SequenceCode": StringAttribute, //
        "SequenceType": StringAttribute, //
        "SequenceSuffix": StringAttribute, //
        "SequencePrefix": StringAttribute, //
        "SequenceLength": StringAttribute, //
        "BeginningSequenceNumber": StringAttribute, //
        "SequenceThreshold": StringAttribute, //
        "Relationship_TransportationGenericEngineRelationshipId": UUIDAttribute, //
        "BackingTable_TMSNumberSequenceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarriers");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierNumberSequenceEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationShippingCarrierNumberSequenceEntity);
  
  auto entity = TransportationShippingCarrierNumberSequenceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}