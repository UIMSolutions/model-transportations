module models.transportations.entities.freights.bills.detail;

@safe:
import models.transportations;

class DTransportationFreightBillDetailEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AccessorialChargeMasterCode": StringAttribute, //
        "BillOfLadingId": UUIDAttribute, //
        "CurrencyCode": StringAttribute, //
        "FreightBillId": UUIDAttribute, //
        "FreightBillDetailEntryNumber": StringAttribute, //
        "FreightBillTypeId": UUIDAttribute, //
        "FreightBillOrderAmount": StringAttribute, //
        "FreightBillOrderQuantity": StringAttribute, //
        "HoldingFreightEndDatetime": StringAttribute, //
        "InvoiceLineType": StringAttribute, //
        "InvoiceVendorAccountNumber": StringAttribute, //
        "LastCycleCountDateTime": StringAttribute, //
        "LoadId": UUIDAttribute, //
        "PhysicalWeight": StringAttribute, //
        "ProductMovementDirectionRule": StringAttribute, //
        "ProNumberCode": StringAttribute, //
        "RateNotes": StringAttribute, //
        "RateUnit": StringAttribute, //
        "RateUnitMethod": StringAttribute, //
        "ReconciliationStatus": StringAttribute, //
        "SequenceNumber": StringAttribute, //
        "ShipmentId": UUIDAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingCarrierServiceId": UUIDAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "StandardTransportationCommodityCode": StringAttribute, //
        "TotalRate": StringAttribute, //
        "TractorNumber": StringAttribute, //
        "TrailerNumber": StringAttribute, //
        "TransportationBillingGroupId": UUIDAttribute, //
        "TransportationBookingNumber": StringAttribute, //
        "TransportationEquipmentCode": StringAttribute, //
        "TransportationExternalCode": StringAttribute, //
        "TransportationHubId": UUIDAttribute, //
        "TransportationModeCode": StringAttribute, //
        "TransportationRoutePlanId": UUIDAttribute, //
        "VesselName": StringAttribute, //
        "VoyageNum": StringAttribute, //
        "DropOffPostalAddressRecId": UUIDAttribute, //
        "DropOffAddressLocationId": UUIDAttribute, //
        "FormattedDropOffAddress": StringAttribute, //
        "DropOffAddressZipCode": StringAttribute, //
        "DropOffAddressBuildingCompliment": StringAttribute, //
        "DropOffAddressCity": StringAttribute, //
        "DropOffAddressCityInKana": StringAttribute, //
        "DropOffAddressCountryRegionId": UUIDAttribute, //
        "DropOffAddressCountryRegionISOCode": StringAttribute, //
        "DropOffAddressCountyId": UUIDAttribute, //
        "DropOffAddressDescription": StringAttribute, //
        "DropOffAddressDistrictName": StringAttribute, //
        "DropOffAddressDunsNumber": StringAttribute, //
        "DropOffAddressLatitude": StringAttribute, //
        "IsDropOffAddressPrivate": StringAttribute, //
        "DropOffAddressLongitude": StringAttribute, //
        "DropOffAddressPostBox": StringAttribute, //
        "DropOffAddressStateId": UUIDAttribute, //
        "DropOffAddressStreet": StringAttribute, //
        "DropOffAddressStreetInKana": StringAttribute, //
        "DropOffAddressStreetNumber": StringAttribute, //
        "DropOffAddressValidFrom": StringAttribute, //
        "DropOffAddressValidTo": StringAttribute, //
        "DropOffAddressTimeZone": StringAttribute, //
        "PickupPostalAddressRecId": UUIDAttribute, //
        "PickupAddressLocationId": UUIDAttribute, //
        "FormattedPickupAddress": StringAttribute, //
        "PickupAddressZipCode": StringAttribute, //
        "PickupAddressBuildingCompliment": StringAttribute, //
        "PickupAddressCity": StringAttribute, //
        "PickupAddressCityInKana": StringAttribute, //
        "PickupAddressCountryRegionId": UUIDAttribute, //
        "PickupAddressCountryRegionISOCode": StringAttribute, //
        "PickupAddressCountyId": UUIDAttribute, //
        "PickupAddressDescription": StringAttribute, //
        "PickupAddressDistrictName": StringAttribute, //
        "PickupAddressDunsNumber": StringAttribute, //
        "PickupAddressLatitude": StringAttribute, //
        "IsPickupAddressPrivate": StringAttribute, //
        "PickupAddressLongitude": StringAttribute, //
        "PickupAddressPostBox": StringAttribute, //
        "PickupAddressStateId": UUIDAttribute, //
        "PickupAddressStreet": StringAttribute, //
        "PickupAddressStreetInKana": StringAttribute, //
        "PickupAddressStreetNumber": StringAttribute, //
        "PickupAddressValidFrom": StringAttribute, //
        "PickupAddressValidTo": StringAttribute, //
        "PickupAddressTimeZone": StringAttribute, //
        "LoadCustomerAccountNumber": StringAttribute, //
        "LoadVendorAccountNumber": StringAttribute, //
        "LoadSalesOrderNumber": StringAttribute, //
        "LoadPurchaseOrderNumber": StringAttribute, //
        "Relationship_ShippingCarrierVendorRelationshipId": UUIDAttribute, //
        "Relationship_LoadCustomerRelationshipId": UUIDAttribute, //
        "Relationship_LoadVendorRelationshipId": UUIDAttribute, //
        "Relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "Relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "Relationship_TransportationBillingGroupRelationshipId": UUIDAttribute, //
        "Relationship_TransportationEquipmentRelationshipId": UUIDAttribute, //
        "Relationship_TransportationHubRelationshipId": UUIDAttribute, //
        "Relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "Relationship_FreightBillTypeRelationshipId": UUIDAttribute, //
        "BackingTable_TMSFreightBillDetailRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilldetails");
  }
}
mixin(EntityCalls!("TransportationFreightBillDetailEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightBillDetailEntity);
  
  auto entity = TMSFreightBillDetailEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}