/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.appointments.appointment;

@safe:
import models.transportations;

class DTransportationAppointmentEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "appointmentSiteId": UUIDAttribute, //
        "appointmentWarehouseId": UUIDAttribute, //
        "appointmentWarehouseLocationId": UUIDAttribute, //
        "appointmentId": UUIDAttribute, //
        "appointmentName": StringAttribute, //
        "appointmentNote": StringAttribute, //
        "appointmentStatus": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "isCustomerPickupAllowed": StringAttribute, //
        "loadId": UUIDAttribute, //
        "plannedEndDateTime": StringAttribute, //
        "plannedStartDateTime": StringAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "salesOrderNumber": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "tractorNumber": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "transportationAppointmentRuleId": UUIDAttribute, //
        "transportationBrokerId": UUIDAttribute, //
        "transportationCarrierId": UUIDAttribute, //
        "vendorAccountNumber": StringAttribute, //
        "relationship_CustomerRelationshipId": UUIDAttribute, //
        "relationship_VendorRelationshipId": UUIDAttribute, //
        "backingTable_TMSAppointmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //	
     ])
      .registerPath("transportation_appointmentdriverlogs");
  }
}
mixin(EntityCalls!("TransportationAppointmentEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationAppointmentEntity);
  
    auto entity = TransportationAppointmentEntity;
    // TODO more tests
  }
}