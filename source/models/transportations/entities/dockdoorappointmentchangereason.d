module models.transportations.entities.dockdoorappointmentchangereason;

@safe:
import models.transportations;

class DTransportationDockDoorAppointmentChangeReasonEntity : DOOPEntity {
  mixin(EntityThis!("TransportationDockDoorAppointmentChangeReasonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ReasonCode": StringAttribute, //
        "ReasonDescription": StringAttribute, //
        "BackingTable_TMSChangeReasonRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_dockdoorappointmentchangereasons");
  }
}
mixin(EntityCalls!("TransportationDockDoorAppointmentChangeReasonEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationDockDoorAppointmentChangeReasonEntity);
  
  auto entity = TransportationDockDoorAppointmentChangeReasonEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}