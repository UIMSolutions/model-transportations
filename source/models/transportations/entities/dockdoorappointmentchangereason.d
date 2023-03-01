/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.dockdoorappointmentchangereason;

@safe:
import models.transportations;

class DTransportationDockDoorAppointmentChangeReasonEntity : DEntity {
  mixin(EntityThis!("TransportationDockDoorAppointmentChangeReasonEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reasonCode": StringAttribute, //
        "reasonDescription": StringAttribute, //
        "backingTable_TMSChangeReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_dockdoorappointmentchangereasons");
  }
}
mixin(EntityCalls!("TransportationDockDoorAppointmentChangeReasonEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationDockDoorAppointmentChangeReasonEntity);

  auto entity = TransportationDockDoorAppointmentChangeReasonEntity;
  // TODO more tests
}}