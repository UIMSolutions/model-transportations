module models.transportations.entities.freights.invoices.header;

@safe:
import models.transportations;

class DTransportationFreightInvoiceHeaderEntity : DEntity {
  mixin(EntityThis!("TransportationFreightInvoiceHeaderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierVendorAccountNumber": StringAttribute, 
        "destinationCountryRegionId": UUIDAttribute, 
        "isInvoiceAutomaticallyMatched": StringAttribute, 
        "defaultBillOfLadingId": UUIDAttribute, 
        "defaultBookingNumber": StringAttribute, 
        "defaultShippingCarrierId": UUIDAttribute, 
        "defaultShippingCarrierServiceId": UUIDAttribute, 
        "cashDiscountCode": StringAttribute, 
        "defaultCosigneeName": StringAttribute, 
        "destinationCountryRegionISOCode": StringAttribute, 
        "currencyCode": StringAttribute, 
        "defaultLastCycleCountingDateTime": StringAttribute, 
        "cashDiscountAmount": StringAttribute, 
        "transportationDistance": StringAttribute, 
        "transportationDistanceUnitId": UUIDAttribute, 
        "documentDate": StringAttribute, 
        "documentNumber": StringAttribute, 
        "dueDateTime": StringAttribute, 
        "exchangeRate": StringAttribute, 
        "internalInvoiceNumber": StringAttribute, 
        "invoiceAmount": StringAttribute, 
        "invoiceDate": StringAttribute, 
        "referenceNumber": StringAttribute, 
        "invoiceStatus": StringAttribute, 
        "loadId": UUIDAttribute, 
        "originalQuoteId": UUIDAttribute, 
        "payeeVendorAccountNumber": StringAttribute, 
        "paymentId": UUIDAttribute, 
        "proNumberCode": StringAttribute, 
        "totalFreightQuantity": StringAttribute, 
        "defaultRelatedAccountNumber": StringAttribute, 
        "defaultRelatedOrderNumber": StringAttribute, 
        "transportationRouteCode": StringAttribute, 
        "scacCode": StringAttribute, 
        "defaultShipmentId": UUIDAttribute, 
        "defaultFreightHeldUntilDateTime": StringAttribute, 
        "defaultTrailerNumber": StringAttribute, 
        "invoiceVendorAccountNumber": StringAttribute, 
        "invoiceNumber": StringAttribute, 
        "paymentTermsName": StringAttribute, 
        "vendorReference": StringAttribute, 
        "defaultVesselName": StringAttribute, 
        "defaultVoyageNumber": StringAttribute, 
        "totalFreightWeight": StringAttribute, 
        "freightWeightUnitId": UUIDAttribute, 
        "backingTable_TMSInvoiceTableRelationshipId": UUIDAttribute, 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, 
      ])
      .registerPath("transportation_freightinvoiceheaders");
  }
}
mixin(EntityCalls!("TransportationFreightInvoiceHeaderEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightInvoiceHeaderEntity);
  
    auto entity = TMSFreightInvoiceHeaderEntity;
    // TODO more tests
  }
}