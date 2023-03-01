/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.fuels.indexregion;

@safe:
import models.transportations;

class DTransportationFuelIndexRegionEntity : DEntity {
  mixin(EntityThis!("TransportationFuelIndexRegionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "regionId": UUIDAttribute, //
        "regionName": StringAttribute, //
        "backingTable_TMSFuelIndexRegionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_fuelindexregions");
  }
}
mixin(EntityCalls!("TransportationFuelIndexRegionEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationFuelIndexRegionEntity);
  
  auto entity = TransportationFuelIndexRegionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}