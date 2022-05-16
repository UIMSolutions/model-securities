module models.securities.entities.security.privileges.privilege;

@safe:
import models.administrations;

// 
class DSecurityPrivilegeEntity : DOOPEntity {
  mixin(EntityThis!("SecurityPrivilegeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("security_privileges");
  }
}
mixin(EntityCalls!("SecurityPrivilegeEntity"));

version(test_library) {
  unittest {
    assert(SecurityPrivilegeEntity);
  
  auto entity = SecurityPrivilegeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}