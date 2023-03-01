/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.bills.types.detailfielddescription;

@safe:
import models.transportations;

class DTransportationFreightBillTypeDetailEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillTypeDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "freightBillDetailFieldDescription": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "freightBillLineFieldName": StringAttribute, //
        "isMatchingRequired": StringAttribute, //
        "fieldSequenceNumber": StringAttribute, //
        "backingTable_TMSFreightBillTypeDetailRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypedetails");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeDetailEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationFreightBillTypeDetailEntity);

  auto entity = TransportationFreightBillTypeDetailEntity;
  // TODO more tests
}}