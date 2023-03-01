/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.numbersequence;

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

version(test_model_transportations) { unittest {
  assert(TransportationShippingCarrierNumberSequenceEntity);

  auto entity = TransportationShippingCarrierNumberSequenceEntity;
  // TODO more tests
}}