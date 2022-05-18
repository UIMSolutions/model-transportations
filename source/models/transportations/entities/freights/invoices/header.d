module models.transportations.entities.freights.invoices.header;

@safe:
import models.transportations;

class DTransportationFreightInvoiceHeaderEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightInvoiceHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ShippingCarrierVendorAccountNumber": StringAttribute, 
        "DestinationCountryRegionId": UUIDAttribute, 
        "IsInvoiceAutomaticallyMatched": StringAttribute, 
        "DefaultBillOfLadingId": UUIDAttribute, 
        "DefaultBookingNumber": StringAttribute, 
        "DefaultShippingCarrierId": UUIDAttribute, 
        "DefaultShippingCarrierServiceId": UUIDAttribute, 
        "CashDiscountCode": StringAttribute, 
        "DefaultCosigneeName": StringAttribute, 
        "DestinationCountryRegionISOCode": StringAttribute, 
        "CurrencyCode": StringAttribute, 
        "DefaultLastCycleCountingDateTime": StringAttribute, 
        "CashDiscountAmount": StringAttribute, 
        "TransportationDistance": StringAttribute, 
        "TransportationDistanceUnitId": UUIDAttribute, 
        "DocumentDate": StringAttribute, 
        "DocumentNumber": StringAttribute, 
        "DueDateTime": StringAttribute, 
        "ExchangeRate": StringAttribute, 
        "InternalInvoiceNumber": StringAttribute, 
        "InvoiceAmount": StringAttribute, 
        "InvoiceDate": StringAttribute, 
        "ReferenceNumber": StringAttribute, 
        "InvoiceStatus": StringAttribute, 
        "LoadId": UUIDAttribute, 
        "OriginalQuoteId": UUIDAttribute, 
        "PayeeVendorAccountNumber": StringAttribute, 
        "PaymentId": UUIDAttribute, 
        "ProNumberCode": StringAttribute, 
        "TotalFreightQuantity": StringAttribute, 
        "DefaultRelatedAccountNumber": StringAttribute, 
        "DefaultRelatedOrderNumber": StringAttribute, 
        "TransportationRouteCode": StringAttribute, 
        "SCACCode": StringAttribute, 
        "DefaultShipmentId": UUIDAttribute, 
        "DefaultFreightHeldUntilDateTime": StringAttribute, 
        "DefaultTrailerNumber": StringAttribute, 
        "InvoiceVendorAccountNumber": StringAttribute, 
        "InvoiceNumber": StringAttribute, 
        "PaymentTermsName": StringAttribute, 
        "VendorReference": StringAttribute, 
        "DefaultVesselName": StringAttribute, 
        "DefaultVoyageNumber": StringAttribute, 
        "TotalFreightWeight": StringAttribute, 
        "FreightWeightUnitId": UUIDAttribute, 
        "BackingTable_TMSInvoiceTableRelationshipId": UUIDAttribute, 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, 
      ])
      .registerPath("transportation_freightinvoiceheaders");
  }
}
mixin(EntityCalls!("TransportationFreightInvoiceHeaderEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightInvoiceHeaderEntity);
  
  auto entity = TMSFreightInvoiceHeaderEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}