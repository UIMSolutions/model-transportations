/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.shippings.carriers.ratingprofile;

@safe:
import models.transportations;

class DTransportationShippingCarrierRatingProfileEntity : DEntity {
  mixin(EntityThis!("TransportationShippingCarrierRatingProfileEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "effectiveEndDateTime": StringAttribute, //
        "effectiveStartDateTime": StringAttribute, //
        "freightRateEngineId": UUIDAttribute, //
        "freightRateMasterId": UUIDAttribute, //
        "originDestinationSiteId": UUIDAttribute, //
        "originDestinationWarehouseId": UUIDAttribute, //
        "carrierFuelIndexCode": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "profileId": UUIDAttribute, //
        "profileName": StringAttribute, //
        "transportationTransitTimeEngineId": UUIDAttribute, //
        "backingTable_TMSRatingProfileRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_shippingcarrier.ratingprofiles");
  }
}
mixin(EntityCalls!("TransportationShippingCarrierRatingProfileEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationShippingCarrierRatingProfileEntity);

  auto entity = TransportationShippingCarrierRatingProfileEntity;
  // TODO more tests
}}