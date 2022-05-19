module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentDriverLogEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentDriverLogEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActualAppointmentEndDateTime": StringAttribute, //
        "ActualAppointmentStartDateTime": StringAttribute, //
        "AppointmentId": StringAttribute, //
        "DriverLicense": StringAttribute, //
        "DriverName": StringAttribute, //
        "IsDropTrailerAllowed": StringAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "TransportationAppointmentAlertRule": StringAttribute, //
        "BackingTable_TMSDriverLogRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("transportation_appointmentdriverlogs");
  }
}
mixin(EntityCalls!("transportation_appointmentchangereasoncodes"));

version(test_model_portals) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
  auto entity = TMSAccessorialChargeMasterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}