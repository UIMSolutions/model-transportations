/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.carriers.fuelindexline;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexLineEntity : DEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "carrierFuelIndexCode": StringAttribute, //
        "effectiveDateTime": StringAttribute, //
        "fromGallonPrice": StringAttribute, //
        "toGallonPrice": StringAttribute, //
        "priceCurrencyCode": StringAttribute, //
        "accessorialUnitPercentage": StringAttribute, //
        "freightSurchargeFlatRate": StringAttribute, //
        "backingTable_TMSCarrierFuelIndexLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexlines");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexLineEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationCarrierFuelIndexLineEntity);

  auto entity = TransportationCarrierFuelIndexLineEntity;
  // TODO more tests
}}