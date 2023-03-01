/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.accessorialcharges.assignment;

@safe:
import models.transportations;

class DTransportationAccessorialChargeAssignmentEntity : DEntity {
  mixin(EntityThis!("TransportationAccessorialChargeAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "chargeAssignmentLevel": StringAttribute, //
        "willChargeCalculationIncludeTransportationDiscounts": StringAttribute, //
        "areChargeAssignmentCriteriaIgnored": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "shippingCarrierAccessorialChargeId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
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
        "fuelSurchargeFuelIndexRegionId": UUIDAttribute, //
        "transportationHubAccessorialChargeId": UUIDAttribute, //
        "transportationHubId": UUIDAttribute, //
        "shippingWarehouseIdCriterion": StringAttribute, //
        "shippingSiteIdCriterion": StringAttribute, //
        "maximumChargeAmount": StringAttribute, //
        "chargeTransportationMileageEngineId": UUIDAttribute, //
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
        "backingTable_TMSAccessorialAssignmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_accessorialchargeassignments");
  }
}
mixin(EntityCalls!("TransportationAccessorialChargeAssignmentEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationAccessorialChargeAssignmentEntity);
  
    auto entity = TransportationAccessorialChargeAssignmentEntity;
    // TODO more tests
  }
}