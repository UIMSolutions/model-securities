module models.administrations.entities.security.roles.role;

@safe:
import models.administrations;

// 
class DSecurityRoleEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "contextString": StringAttribute, // 
      ])
      .registerPath("admin_securityroles");
  }
}
mixin(EntityCalls!("SecurityRoleEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleEntity);
  
  auto entity = SecurityRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}