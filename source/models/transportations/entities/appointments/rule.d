/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.appointments.rule;

@safe:
import models.transportations;

class DTransportationAppointmentRuleEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentRuleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "itemMovementDirectionRule": StringAttribute, //
        "maximumAppointmentsAllowed": StringAttribute, //
        "appointmentRuleId": UUIDAttribute, //
        "isDriverCheckInRequired": StringAttribute, //
        "defaultAppointmentDurationMinutes": StringAttribute, //
        "appointmentWarehouseId": UUIDAttribute, //
        "appointmentSiteId": UUIDAttribute, //
        "appointmentCheckInCheckOutWarehouseLocationProfileId": UUIDAttribute, //
        "backingTable_TMSCalendarTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_appointmentrules");
  }
}
mixin(EntityCalls!("TransportationAppointmentRuleEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationAppointmentRuleEntity);

  auto entity = TransportationAppointmentRuleEntity;
  // TODO more tests
}}