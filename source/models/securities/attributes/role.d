module models.securities.attributes.role;

@safe:
import models.securities;

class DContactAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ContactAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("contact")
      .registerPath("contact");
  }  
}
mixin(AttributeCalls!("ContactAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DContactAttribute);
    testAttribute(ContactAttribute);
  }
}