module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentChangeReasonCodeEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentChangeReasonCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reasonDescription": StringAttribute, //
        "reasonCode": StringAttribute, //
        "backingTable_TMSChangeReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
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