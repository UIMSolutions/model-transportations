/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentChangeReasonCodeEntity : DEntity {
  mixin(EntityThis!("TransportationAppointmentChangeReasonCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reasonDescription": StringAttribute, //
        "reasonCode": StringAttribute, //
        "backingTable_TMSChangeReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
  }
}
mixin(EntityCalls!("TransportationAppointmentChangeReasonCodeEntity"));

version(test_model_transportations) { unittest {
  assert(TransportationAppointmentChangeReasonCodeEntity);

  auto entity = TransportationAppointmentChangeReasonCodeEntity;    
  // TODO more tests
}}