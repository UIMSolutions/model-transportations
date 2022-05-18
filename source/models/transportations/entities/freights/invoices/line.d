module models.transportations.entities.freights.invoices.header;

@safe:
import models.transportations;

class DTransportationFreightInvoiceLineEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightInvoiceLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DestinationCountryRegionId": UUIDAttribute, //
        "TransportationBillingGroupId": UUIDAttribute, //
        "BillOfLadingId": UUIDAttribute, //
        "BookingNumber": StringAttribute, //
        "ShippingCarrierId": UUIDAttribute, //
        "ShippingCarrierServiceId": UUIDAttribute, //
        "CosigneeName": StringAttribute, //
        "DestinationCountryRegionISOCode": StringAttribute, //
        "LastCycleCountingDateTime": StringAttribute, //
        "DescriptionLine2": StringAttribute, //
        "DescriptionLine1": StringAttribute, //
        "TransportationDistance": StringAttribute, //
        "ExternalCode": StringAttribute, //
        "FreightBillTypeId": UUIDAttribute, //
        "IsLineHeaderCharge": StringAttribute, //
        "WarehouseId": UUIDAttribute, //
        "InventorySiteId": UUIDAttribute, //
        "InvoiceDate": StringAttribute, //
        "LineStatus": StringAttribute, //
        "ItemNumber": StringAttribute, //
        "LineNumber": StringAttribute, //
        "LineType": StringAttribute, //
        "LoadId": UUIDAttribute, //
        "DeliveryModeCode": StringAttribute, //
        "NetAmount": StringAttribute, //
        "ProNumberCode": StringAttribute, //
        "FreightQuantity": StringAttribute, //
        "TMSFreightInvoiceRecId": UUIDAttribute, //
        "RelatedAccountNumber": StringAttribute, //
        "RelatedOrderNumber": StringAttribute, //
        "TransportationRouteCode": StringAttribute, //
        "TrackingNumber": StringAttribute, //
        "ShipmentId": UUIDAttribute, //
        "FreightHeldUntilDateTime": StringAttribute, //
        "TrailerNumber": StringAttribute, //
        "UnitPrice": StringAttribute, //
        "FreightWeightUnitId": UUIDAttribute, //
        "ShippingCarrierVendorAccountNumber": StringAttribute, //
        "InvoiceVendorAccountNumber": StringAttribute, //
        "VesselName": StringAttribute, //
        "VoyageNumber": StringAttribute, //
        "FreightWeight": StringAttribute, //
        "Direction": StringAttribute, //
        "InternalInvoiceNumber": StringAttribute, //
        "Relationship_FreightInvoiceHeaderRelationshipId": UUIDAttribute, //
        "BackingTable_TMSInvoiceLineRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //		
      ])
      .registerPath("transportation_freightinvoicelines");
  }
}
mixin(EntityCalls!("TransportationFreightInvoiceLineEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSFreightInvoiceLineEntity);
  
  auto entity = TMSFreightInvoiceLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}