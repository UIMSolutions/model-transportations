module models.transportations.entities.appointments.history;

@safe:
import models.transportations;

class DTransportationAppointmentHistoryEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentHistoryEntity"));

  override void initialize() {
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

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests
  }
}