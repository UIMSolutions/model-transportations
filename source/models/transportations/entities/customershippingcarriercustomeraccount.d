/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.customershippingcarriercustomeraccount;

@safe:
import models.transportations;

class DTransportationCustomerShippingCarrierCustomerAccountEntity : DEntity {
  mixin(EntityThis!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "customerAccountNumber": StringAttribute, //
        "shippingCarrierCustomerAccountNumber": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "backingTable_TMSShippingCarrierCustomerAccountRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_customershippingcarriercustomeraccounts");
  }
}
mixin(EntityCalls!("TransportationCustomerShippingCarrierCustomerAccountEntity"));

version(test_model_transportations) { unittest {
    assert(TransportationCustomerShippingCarrierCustomerAccountEntity);
  
    auto entity = TransportationCustomerShippingCarrierCustomerAccountEntity;
    // TODO more tests
  }
}