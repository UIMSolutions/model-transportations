module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AppointmentSiteId": StringAttribute, //
        "AppointmentWarehouseId": StringAttribute, //
        "AppointmentWarehouseLocationId": StringAttribute, //
        "AppointmentId": StringAttribute, //
        "AppointmentName": StringAttribute, //
        "AppointmentNote": StringAttribute, //
        "AppointmentStatus": StringAttribute, //
        "CustomerAccountNumber": StringAttribute, //
        "IsCustomerPickupAllowed": StringAttribute, //
        "LoadId": StringAttribute, //
        "PlannedEndDateTime": StringAttribute, //
        "PlannedStartDateTime": StringAttribute, //
        "ProductMovementDirectionRule": StringAttribute, //
        "PurchaseOrderNumber": StringAttribute, //
        "SalesOrderNumber": StringAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "TractorNumber": StringAttribute, //
        "TrailerNumber": StringAttribute, //
        "TransportationAppointmentRuleId": StringAttribute, //
        "TransportationBrokerId": StringAttribute, //
        "TransportationCarrierId": StringAttribute, //
        "VendorAccountNumber": StringAttribute, //
        "Relationship_CustomerRelationshipId": StringAttribute, //
        "Relationship_VendorRelationshipId": StringAttribute, //
        "BackingTable_TMSAppointmentRelationshipId": StringAttribute, //
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