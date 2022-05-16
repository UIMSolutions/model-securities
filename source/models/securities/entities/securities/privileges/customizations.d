module source.Id": UUIDAttribute.entities.security.privileges.customizations;

@safe:
import models.administrations;

// 
class DSecurityPrivilegeCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SecurityPrivilegeCustomizationsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("security_privilegecustomizations");
  }
}
mixin(EntityCalls!("SecurityPrivilegeCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SecurityPrivilegeCustomizationsEntity);
  
  auto entity = SecurityPrivilegeCustomizationsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}