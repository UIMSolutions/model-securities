module models.administrations.entities.security.roles.customization;

@safe:
import models.administrations;

// 
class DSecurityRoleCustomizationEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleCustomizationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("security_rolecustomizations");
  }
}
mixin(EntityCalls!("SecurityRoleCustomizationEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleCustomizationEntity);
  
    auto entity = SecurityRoleCustomizationEntity;
  }
}