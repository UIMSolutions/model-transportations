module models.transportations.entities.appointments.driverlog;

@safe:
import models.transportations;

class DTransportationAppointmentDriverLogEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentDriverLogEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "actualAppointmentEndDateTime": StringAttribute, //
        "actualAppointmentStartDateTime": StringAttribute, //
        "appointmentId": StringAttribute, //
        "driverLicense": StringAttribute, //
        "driverName": StringAttribute, //
        "isDropTrailerAllowed": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "transportationAppointmentAlertRule": StringAttribute, //
        "backingTable_TMSDriverLogRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("transportation_appointmentdriverlogs");
  }
}
mixin(EntityCalls!("transportation_appointmentchangereasoncodes"));

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests
  }
}