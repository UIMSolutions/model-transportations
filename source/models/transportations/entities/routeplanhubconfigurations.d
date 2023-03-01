/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.routeplanhubconfigurations;

@safe:
import models.transportations;

class DTransportationRoutePlanHubConfigurationEntity : DEntity {
  mixin(EntityThis!("TransportationRoutePlanHubConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "transportationHubId": UUIDAttribute, //
        "invoiceAccountType": StringAttribute, //
        "payingPartyRole": StringAttribute, //
        "transportationRoutePlanId": UUIDAttribute, //
        "orderVendorAccountNumber": StringAttribute, //
        "invoiceVendorAccountNumber": StringAttribute, //
        "backingTable_TMSRouteHubConfigRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_routeplanhubconfigurations");
  }
}
mixin(EntityCalls!("TransportationRoutePlanHubConfigurationEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationRoutePlanHubConfigurationEntity);
  
    auto entity = TransportationRoutePlanHubConfigurationEntity;
    // TODO more tests
  }
}