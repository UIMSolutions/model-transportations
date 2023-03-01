/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.fuels.index;

@safe:
import models.transportations;

class DTransportationFuelIndexEntity : DEntity {
  mixin(EntityThis!("TransportationFuelIndexEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "effectiveDateTime": StringAttribute, //
        "fuelIndexRegionId": UUIDAttribute, //
        "gallonPrice": StringAttribute, //
        "relationship_FuelIndexRegionRelationshipId": UUIDAttribute, //
        "backingTable_TMSFuelIndexRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_fuelindexes");
  }
}
mixin(EntityCalls!("TransportationFuelIndexEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationFuelIndexEntity);
  
  auto entity = TransportationFuelIndexEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}