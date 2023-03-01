/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.freights.bills.detail;

@safe:
import models.transportations;

class DTransportationFreightBillDetailEntity : DEntity {
  mixin(EntityThis!("TransportationFreightBillDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accessorialChargeMasterCode": StringAttribute, //
        "billOfLadingId": UUIDAttribute, //
        "currencyCode": StringAttribute, //
        "freightBillId": UUIDAttribute, //
        "freightBillDetailEntryNumber": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "freightBillOrderAmount": StringAttribute, //
        "freightBillOrderQuantity": StringAttribute, //
        "holdingFreightEndDatetime": StringAttribute, //
        "invoiceLineType": StringAttribute, //
        "invoiceVendorAccountNumber": StringAttribute, //
        "lastCycleCountDateTime": StringAttribute, //
        "loadId": UUIDAttribute, //
        "physicalWeight": StringAttribute, //
        "productMovementDirectionRule": StringAttribute, //
        "proNumberCode": StringAttribute, //
        "rateNotes": StringAttribute, //
        "rateUnit": StringAttribute, //
        "rateUnitMethod": StringAttribute, //
        "reconciliationStatus": StringAttribute, //
        "sequenceNumber": StringAttribute, //
        "shipmentId": UUIDAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "standardTransportationCommodityCode": StringAttribute, //
        "totalRate": StringAttribute, //
        "tractorNumber": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "transportationBookingNumber": StringAttribute, //
        "transportationEquipmentCode": StringAttribute, //
        "transportationExternalCode": StringAttribute, //
        "transportationHubId": UUIDAttribute, //
        "transportationModeCode": StringAttribute, //
        "transportationRoutePlanId": UUIDAttribute, //
        "vesselName": StringAttribute, //
        "voyageNum": StringAttribute, //
        "dropOffPostalAddressRecId": UUIDAttribute, //
        "dropOffAddressLocationId": UUIDAttribute, //
        "formattedDropOffAddress": StringAttribute, //
        "dropOffAddressZipCode": StringAttribute, //
        "dropOffAddressBuildingCompliment": StringAttribute, //
        "dropOffAddressCity": StringAttribute, //
        "dropOffAddressCityInKana": StringAttribute, //
        "dropOffAddressCountryRegionId": UUIDAttribute, //
        "dropOffAddressCountryRegionISOCode": StringAttribute, //
        "dropOffAddressCountyId": UUIDAttribute, //
        "dropOffAddressDescription": StringAttribute, //
        "dropOffAddressDistrictName": StringAttribute, //
        "dropOffAddressDunsNumber": StringAttribute, //
        "dropOffAddressLatitude": StringAttribute, //
        "isDropOffAddressPrivate": StringAttribute, //
        "dropOffAddressLongitude": StringAttribute, //
        "dropOffAddressPostBox": StringAttribute, //
        "dropOffAddressStateId": UUIDAttribute, //
        "dropOffAddressStreet": StringAttribute, //
        "dropOffAddressStreetInKana": StringAttribute, //
        "dropOffAddressStreetNumber": StringAttribute, //
        "dropOffAddressValidFrom": StringAttribute, //
        "dropOffAddressValidTo": StringAttribute, //
        "dropOffAddressTimeZone": StringAttribute, //
        "pickupPostalAddressRecId": UUIDAttribute, //
        "pickupAddressLocationId": UUIDAttribute, //
        "formattedPickupAddress": StringAttribute, //
        "pickupAddressZipCode": StringAttribute, //
        "pickupAddressBuildingCompliment": StringAttribute, //
        "pickupAddressCity": StringAttribute, //
        "pickupAddressCityInKana": StringAttribute, //
        "pickupAddressCountryRegionId": UUIDAttribute, //
        "pickupAddressCountryRegionISOCode": StringAttribute, //
        "pickupAddressCountyId": UUIDAttribute, //
        "pickupAddressDescription": StringAttribute, //
        "pickupAddressDistrictName": StringAttribute, //
        "pickupAddressDunsNumber": StringAttribute, //
        "pickupAddressLatitude": StringAttribute, //
        "isPickupAddressPrivate": StringAttribute, //
        "pickupAddressLongitude": StringAttribute, //
        "pickupAddressPostBox": StringAttribute, //
        "pickupAddressStateId": UUIDAttribute, //
        "pickupAddressStreet": StringAttribute, //
        "pickupAddressStreetInKana": StringAttribute, //
        "pickupAddressStreetNumber": StringAttribute, //
        "pickupAddressValidFrom": StringAttribute, //
        "pickupAddressValidTo": StringAttribute, //
        "pickupAddressTimeZone": StringAttribute, //
        "loadCustomerAccountNumber": StringAttribute, //
        "loadVendorAccountNumber": StringAttribute, //
        "loadSalesOrderNumber": StringAttribute, //
        "loadPurchaseOrderNumber": StringAttribute, //
        "relationship_ShippingCarrierVendorRelationshipId": UUIDAttribute, //
        "relationship_LoadCustomerRelationshipId": UUIDAttribute, //
        "relationship_LoadVendorRelationshipId": UUIDAttribute, //
        "relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "relationship_TransportationBillingGroupRelationshipId": UUIDAttribute, //
        "relationship_TransportationEquipmentRelationshipId": UUIDAttribute, //
        "relationship_TransportationHubRelationshipId": UUIDAttribute, //
        "relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "relationship_FreightBillTypeRelationshipId": UUIDAttribute, //
        "backingTable_TMSFreightBillDetailRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_freightbilldetails");
  }
}
mixin(EntityCalls!("TransportationFreightBillDetailEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationFreightBillDetailEntity);
  
    auto entity = TransportationFreightBillDetailEntity;
    // TODO more tests
  }
}