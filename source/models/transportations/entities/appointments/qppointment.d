module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "appointmentSiteId": StringAttribute, //
        "appointmentWarehouseId": StringAttribute, //
        "appointmentWarehouseLocationId": StringAttribute, //
        "appointmentId": StringAttribute, //
        "appointmentName": StringAttribute, //
        "appointmentNote": StringAttribute, //
        "appointmentStatus": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "isCustomerPickupAllowed": StringAttribute, //
        "loadId": StringAttribute, //
        "plannedEndDateTime": StringAttribute, //
        "plannedStartDateTime": StringAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "salesOrderNumber": StringAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "tractorNumber": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "transportationAppointmentRuleId": StringAttribute, //
        "transportationBrokerId": StringAttribute, //
        "transportationCarrierId": StringAttribute, //
        "vendorAccountNumber": StringAttribute, //
        "relationship_CustomerRelationshipId": StringAttribute, //
        "relationship_VendorRelationshipId": StringAttribute, //
        "backingTable_TMSAppointmentRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //	
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