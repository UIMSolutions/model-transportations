module models.transportations.entities.appointments.rule;

@safe:
import models.transportations;

class DTransportationAppointmentRuleEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentRuleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "itemMovementDirectionRule": StringAttribute, //
        "maximumAppointmentsAllowed": StringAttribute, //
        "appointmentRuleId": StringAttribute, //
        "isDriverCheckInRequired": StringAttribute, //
        "defaultAppointmentDurationMinutes": StringAttribute, //
        "appointmentWarehouseId": StringAttribute, //
        "appointmentSiteId": StringAttribute, //
        "appointmentCheckInCheckOutWarehouseLocationProfileId": StringAttribute, //
        "backingTable_TMSCalendarTypeRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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