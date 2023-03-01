/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.bills.types.assignment;

@safe:
import models.transportations;

class DTransportationFreightBillTypeAssignmentEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillTypeAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierId": UUIDAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "warehouseId": UUIDAttribute, //
        "operationalSiteId": UUIDAttribute, //
        "transportationModeCode": StringAttribute, //
        "backingTable_TMSFreightBillTypeAssignmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilltypeassignments");
  }
}
mixin(EntityCalls!("TransportationFreightBillTypeAssignmentEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationFreightBillTypeAssignmentEntity);
  
    auto entity = TransportationFreightBillTypeAssignmentEntity;
    // TODO more tests
  }
}