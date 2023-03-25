/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.carriers.fuelindex;

@safe:
import models.transportations;

class DTransportationCarrierFuelIndexEntity : DEntity {
  mixin(EntityThis!("TransportationCarrierFuelIndexEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "indexCode": StringAttribute, //
        "indexDescription": StringAttribute, //
        "backingTable_TMSCarrierFuelIndexTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_carrierfuelindexes");
  }
}
mixin(EntityCalls!("TransportationCarrierFuelIndexEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationCarrierFuelIndexEntity);

  auto entity = TransportationCarrierFuelIndexEntity;
  // TODO more tests
}}