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

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;
    // TODO more tests
  }
}