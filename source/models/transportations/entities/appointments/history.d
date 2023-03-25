/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.appointments.history;

@safe:
import models.transportations;

class DTransportationAppointmentHistoryEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentHistoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "appointmentId": UUIDAttribute, //
        "appointmentNote": StringAttribute, //
        "appointmentStatus": StringAttribute, //
        "appointmentStatusReason": StringAttribute, //
        "isCustomerPickupAllowed": StringAttribute, //
        "plannedEndDateTime": StringAttribute, //
        "plannedStartDateTime": StringAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "tractorNumber": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "transportationAppointmentHistoryEntryNumber": StringAttribute, //
        "transportationAppointmentRuleId": UUIDAttribute, //
        "transportationBrokerId": UUIDAttribute, //
        "transportationCarrierId": UUIDAttribute, //
        "loadId": UUIDAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "salesOrderNumber": StringAttribute, //
        "backingTable_TMSApptHistoryRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_appointmenthistories");
  }
}
mixin(EntityCalls!("TransportationAppointmentHistoryEntity"));

version(test_model_transportations) { unittest {
  assert(TMSAccessorialChargeMasterEntity);

  auto entity = TMSAccessorialChargeMasterEntity;
  // TODO more tests
}}