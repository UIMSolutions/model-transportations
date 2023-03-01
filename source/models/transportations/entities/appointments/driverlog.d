/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.appointments.driverlog;

@safe:
import models.transportations;

class DTransportationAppointmentDriverLogEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentDriverLogEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "actualAppointmentEndDateTime": StringAttribute, //
        "actualAppointmentStartDateTime": StringAttribute, //
        "appointmentId": UUIDAttribute, //
        "driverLicense": StringAttribute, //
        "driverName": StringAttribute, //
        "isDropTrailerAllowed": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "transportationAppointmentAlertRule": StringAttribute, //
        "backingTable_TMSDriverLogRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("transportation_appointmentdriverlogs");
  }
}
mixin(EntityCalls!("TransportationAppointmentDriverLogEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationAppointmentDriverLogEntity);

  auto entity = TransportationAppointmentDriverLogEntity;
  // TODO more tests
}}