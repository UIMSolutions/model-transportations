module models.transportations.entities.accessorialcharges.assignment;

@safe:
import models.transportations;

class DTransportationAccessorialChargeMasterEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAccessorialChargeAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ChargeAssignmentLevel": StringAttribute, //
        "WillChargeCalculationIncludeTransportationDiscounts": StringAttribute, //
        "AreChargeAssignmentCriteriaIgnored": StringAttribute, //
        "TransportationBillingGroupId": StringAttribute, //
        "ShippingCarrierAccessorialChargeId": StringAttribute, //
        "ShippingCarrierId": StringAttribute, //
        "AddressCountryRegionIdCriterion": StringAttribute, //
        "ChargeCurrencyCode": StringAttribute, //
        "OrderingCustomerAccountNumberCriterion": StringAttribute, //
        "InvoiceCustomerAccountNumberCriterion": StringAttribute, //
        "EffectiveStartDateTimeCriterion": StringAttribute, //
        "EffectiveEndDateTimeCriterion": StringAttribute, //
        "TransportationEquipmentCodeCriterion": StringAttribute, //
        "FlatChargeAmount": StringAttribute, //
        "ChargeType": StringAttribute, //
        "DeliveryTermsCodeCriterion": StringAttribute, //
        "FuelSurchargeFuelIndexRegionId": StringAttribute, //
        "TransportationHubAccessorialChargeId": StringAttribute, //
        "TransportationHubId": StringAttribute, //
        "ShippingWarehouseIdCriterion": StringAttribute, //
        "ShippingSiteIdCriterion": StringAttribute, //
        "MaximumChargeAmount": StringAttribute, //
        "ChargeTransportationMileageEngineId": StringAttribute, //
        "MinimumChargeAmount": StringAttribute, //
        "ChargeAssignmentName": StringAttribute, //
        "FuelSurchargeOffsetDays": StringAttribute, //
        "ChargePercentage": StringAttribute, //
        "ToAddressZipCodeCriterion": StringAttribute, //
        "FromAddressZipCodeCriterion": StringAttribute, //
        "IsResidentialShipCriterion": StringAttribute, //
        "DropOffAddressStateIdCriterion": StringAttribute, //
        "ChargeAccessorialUnit": StringAttribute, //
        "ChargeAccessorialUnitDivisor": StringAttribute, //
        "MaximumFreightValueCriterion": StringAttribute, //
        "MinimumFreightValueCriterion": StringAttribute, //
        "MaximumFreightWeightCriterion": StringAttribute, //
        "MinimumFreightWeightCriterion": StringAttribute, //
        "TransportationZoneIdCriterion": StringAttribute, //
        "TransportationZoneMasterCodeCriterion": StringAttribute, //
        "BackingTable_TMSAccessorialAssignmentRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargeassignments");
  }
}
mixin(EntityCalls!("TransportationAccessorialChargeAssignmentEntity"));

version(test_model_portals) {
  unittest {
    assert(TransportationAccessorialChargeAssignmentEntity);
  
  auto entity = TransportationAccessorialChargeAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}