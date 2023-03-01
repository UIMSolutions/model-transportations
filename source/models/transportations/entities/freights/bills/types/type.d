/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.bills.types.type;

@safe:
import models.transportations;

class DTransportationFreightBillTypeEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "freightEngineAssemblyName": StringAttribute, //
        "freightEngineClassName": StringAttribute, //
        "typeId": UUIDAttribute, //
        "backingTable_TMSFreightBillTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypes");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationFreightBillTypeEntity);

  auto entity = TransportationFreightBillTypeEntity;
  // TODO more tests
}}