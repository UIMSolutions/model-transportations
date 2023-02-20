module models.workflows.atributes.primarycompanycontext;

@safe:
import models.workflows;

class DPrimaryCompanyContextRelationshipIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PrimaryCompanyContextRelationshipIdAttribute"));

  override void initialize() {
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