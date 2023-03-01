/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.transportations.atributes.uuids.relationships.primarycompanycontext;

@safe:
import models.transportations;

class DPrimaryCompanyContextRelationshipIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PrimaryCompanyContextRelationshipIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("primaryCompanyContextRelationshipId")
      .registerPath("primaryCompanyContextRelationshipId");
  }  
}
mixin(AttributeCalls!("PrimaryCompanyContextRelationshipIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DPrimaryCompanyContextRelationshipIdAttribute);
    testAttribute(PrimaryCompanyContextRelationshipIdAttribute);
  }
}