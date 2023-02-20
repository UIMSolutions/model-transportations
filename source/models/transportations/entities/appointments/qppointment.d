module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "appointmentSiteId": UUIDAttribute, //
        "appointmentWarehouseId": UUIDAttribute, //
        "appointmentWarehouseLocationId": UUIDAttribute, //
        "appointmentId": UUIDAttribute, //
        "appointmentName": StringAttribute, //
        "appointmentNote": StringAttribute, //
        "appointmentStatus": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "isCustomerPickupAllowed": StringAttribute, //
        "loadId": UUIDAttribute, //
        "plannedEndDateTime": StringAttribute, //
        "plannedStartDateTime": StringAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "salesOrderNumber": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "tractorNumber": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "transportationAppointmentRuleId": UUIDAttribute, //
        "transportationBrokerId": UUIDAttribute, //
        "transportationCarrierId": UUIDAttribute, //
        "vendorAccountNumber": StringAttribute, //
        "relationship_CustomerRelationshipId": UUIDAttribute, //
        "relationship_VendorRelationshipId": UUIDAttribute, //
        "backingTable_TMSAppointmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //	
     ])
      .registerPath("transportation_appointmentdriverlogs");
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