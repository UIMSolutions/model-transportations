module models.transportations.entities.freights.invoices.line;

@safe:
import models.transportations;

class DTransportationFreightInvoiceLineEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightInvoiceLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "destinationCountryRegionId": UUIDAttribute, //
        "transportationBillingGroupId": UUIDAttribute, //
        "billOfLadingId": UUIDAttribute, //
        "bookingNumber": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "cosigneeName": StringAttribute, //
        "destinationCountryRegionISOCode": StringAttribute, //
        "lastCycleCountingDateTime": StringAttribute, //
        "descriptionLine2": StringAttribute, //
        "descriptionLine1": StringAttribute, //
        "transportationDistance": StringAttribute, //
        "externalCode": StringAttribute, //
        "freightBillTypeId": UUIDAttribute, //
        "isLineHeaderCharge": StringAttribute, //
        "warehouseId": UUIDAttribute, //
        "inventorySiteId": UUIDAttribute, //
        "invoiceDate": StringAttribute, //
        "lineStatus": StringAttribute, //
        "itemNumber": StringAttribute, //
        "lineNumber": StringAttribute, //
        "lineType": StringAttribute, //
        "loadId": UUIDAttribute, //
        "deliveryModeCode": StringAttribute, //
        "netAmount": StringAttribute, //
        "proNumberCode": StringAttribute, //
        "freightQuantity": StringAttribute, //
        "freightInvoiceRecId": UUIDAttribute, //
        "relatedAccountNumber": StringAttribute, //
        "relatedOrderNumber": StringAttribute, //
        "transportationRouteCode": StringAttribute, //
        "trackingNumber": StringAttribute, //
        "shipmentId": UUIDAttribute, //
        "freightHeldUntilDateTime": StringAttribute, //
        "trailerNumber": StringAttribute, //
        "unitPrice": StringAttribute, //
        "freightWeightUnitId": UUIDAttribute, //
        "shippingCarrierVendorAccountNumber": StringAttribute, //
        "invoiceVendorAccountNumber": StringAttribute, //
        "vesselName": StringAttribute, //
        "voyageNumber": StringAttribute, //
        "freightWeight": StringAttribute, //
        "direction": StringAttribute, //
        "InternalInvoiceNumber": StringAttribute, //
        "relationship_FreightInvoiceHeaderRelationshipId": UUIDAttribute, //
        "backingTable_TMSInvoiceLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //		
      ])
      .registerPath("transportation_freightinvoicelines");
  }
}
mixin(EntityCalls!("TransportationFreightInvoiceLineEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightInvoiceLineEntity);
  
    auto entity = TMSFreightInvoiceLineEntity;
    // TODO more tests
  }
}