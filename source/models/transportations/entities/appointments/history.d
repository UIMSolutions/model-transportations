module models.transportations.entities.appointments.history;

@safe:
import models.transportations;

class DTransportationAppointmentHistoryEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentHistoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "appointmentId": StringAttribute, //
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
        "transportationAppointmentRuleId": StringAttribute, //
        "transportationBrokerId": StringAttribute, //
        "transportationCarrierId": StringAttribute, //
        "loadId": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "salesOrderNumber": StringAttribute, //
        "backingTable_TMSApptHistoryRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_appointmenthistories");
  }
}
mixin(EntityCalls!("TransportationAppointmentHistoryEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests
  }
}