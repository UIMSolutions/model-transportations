module models.transportations.entities.accessorialcharges.assignment;

@safe:
import models.transportations;

class DTransportationAccessorialChargeMasterEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAccessorialChargeAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "chargeAssignmentLevel": StringAttribute, //
        "willChargeCalculationIncludeTransportationDiscounts": StringAttribute, //
        "areChargeAssignmentCriteriaIgnored": StringAttribute, //
        "transportationBillingGroupId": StringAttribute, //
        "shippingCarrierAccessorialChargeId": StringAttribute, //
        "shippingCarrierId": StringAttribute, //
        "addressCountryRegionIdCriterion": StringAttribute, //
        "chargeCurrencyCode": StringAttribute, //
        "orderingCustomerAccountNumberCriterion": StringAttribute, //
        "invoiceCustomerAccountNumberCriterion": StringAttribute, //
        "effectiveStartDateTimeCriterion": StringAttribute, //
        "effectiveEndDateTimeCriterion": StringAttribute, //
        "transportationEquipmentCodeCriterion": StringAttribute, //
        "flatChargeAmount": StringAttribute, //
        "chargeType": StringAttribute, //
        "deliveryTermsCodeCriterion": StringAttribute, //
        "fuelSurchargeFuelIndexRegionId": StringAttribute, //
        "transportationHubAccessorialChargeId": StringAttribute, //
        "transportationHubId": StringAttribute, //
        "shippingWarehouseIdCriterion": StringAttribute, //
        "shippingSiteIdCriterion": StringAttribute, //
        "maximumChargeAmount": StringAttribute, //
        "chargeTransportationMileageEngineId": StringAttribute, //
        "minimumChargeAmount": StringAttribute, //
        "chargeAssignmentName": StringAttribute, //
        "fuelSurchargeOffsetDays": StringAttribute, //
        "chargePercentage": StringAttribute, //
        "toAddressZipCodeCriterion": StringAttribute, //
        "fromAddressZipCodeCriterion": StringAttribute, //
        "isResidentialShipCriterion": StringAttribute, //
        "dropOffAddressStateIdCriterion": StringAttribute, //
        "chargeAccessorialUnit": StringAttribute, //
        "chargeAccessorialUnitDivisor": StringAttribute, //
        "maximumFreightValueCriterion": StringAttribute, //
        "minimumFreightValueCriterion": StringAttribute, //
        "maximumFreightWeightCriterion": StringAttribute, //
        "minimumFreightWeightCriterion": StringAttribute, //
        "transportationZoneIdCriterion": StringAttribute, //
        "transportationZoneMasterCodeCriterion": StringAttribute, //
        "backingTable_TMSAccessorialAssignmentRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargeassignments");
  }
}
mixin(EntityCalls!("TransportationAccessorialChargeAssignmentEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationAccessorialChargeAssignmentEntity);
  
    auto entity = TransportationAccessorialChargeAssignmentEntity;
    // TODO more tests
  }
}