/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.procurementfreightcharge;

@safe:
import models.transportations;

class DTransportationProcurementFreightChargeEntity : DEntity {
  mixin(EntityThis!("TransportationProcurementFreightChargeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accessorialChargeMasterCode": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "orderingCustomerAccountNumber": StringAttribute, //
        "effectiveStartDate": StringAttribute, //
        "effectiveEndDate": StringAttribute, //
        "deliveryTermsCode": StringAttribute, //
        "isFreightChargeIgnored": StringAttribute, //
        "warehouseId": UUIDAttribute, //
        "operationalSiteId": UUIDAttribute, //
        "transportationMethodId": UUIDAttribute, //
        "freightChargeType": StringAttribute, //
        "procurementChargeCode": StringAttribute, //
        "transportationModeCode": StringAttribute, //
        "relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierServiceRelationshipId": UUIDAttribute, //
        "relationship_OrderingCustomerRelationshipId": UUIDAttribute, //
        "relationship_DeliveryTermsRelationshipId": UUIDAttribute, //
        "relationship_WarehouseRelationshipId": UUIDAttribute, //
        "relationship_OperationalSiteRelationshipId": UUIDAttribute, //
        "relationship_TransportationMethodRelationshipId": UUIDAttribute, //
        "relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "relationship_ProcurementChargeRelationshipId": UUIDAttribute, //
        "backingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_procurementfreightcharges");
  }
}
mixin(EntityCalls!("TransportationProcurementFreightChargeEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationProcurementFreightChargeEntity);
  
    auto entity = TransportationProcurementFreightChargeEntity;
    // TODO more tests
  }
}