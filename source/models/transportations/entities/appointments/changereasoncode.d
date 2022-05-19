module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentChangeReasonCodeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentChangeReasonCodeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ReasonDescription": StringAttribute, //
        "ReasonCode": StringAttribute, //
        "BackingTable_TMSChangeReasonRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
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