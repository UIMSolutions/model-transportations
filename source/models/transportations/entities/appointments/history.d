module models.transportations.entities.appointments.history;

@safe:
import models.transportations;

class DTransportationAppointmentHistoryEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentHistoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AppointmentId": StringAttribute, //
        "AppointmentNote": StringAttribute, //
        "AppointmentStatus": StringAttribute, //
        "AppointmentStatusReason": StringAttribute, //
        "IsCustomerPickupAllowed": StringAttribute, //
        "PlannedEndDateTime": StringAttribute, //
        "PlannedStartDateTime": StringAttribute, //
        "ProductMovementDirectionRule": StringAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "TractorNumber": StringAttribute, //
        "TrailerNumber": StringAttribute, //
        "TransportationAppointmentHistoryEntryNumber": StringAttribute, //
        "TransportationAppointmentRuleId": StringAttribute, //
        "TransportationBrokerId": StringAttribute, //
        "TransportationCarrierId": StringAttribute, //
        "LoadId": StringAttribute, //
        "PurchaseOrderNumber": StringAttribute, //
        "SalesOrderNumber": StringAttribute, //
        "BackingTable_TMSApptHistoryRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_appointmenthistories");
  }
}
mixin(EntityCalls!("TransportationAppointmentHistoryEntity"));

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