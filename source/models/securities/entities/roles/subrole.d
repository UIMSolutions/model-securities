module models.administrations.entities.security.roles.subrole;

@safe:
import models.administrations;

// 
class DSecuritySubRoleEntity : DOOPEntity {
  mixin(EntityThis!("SecuritySubRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securitySubRoleId": UUIDAttribute, // 
        "securitySubRoleName": StringAttribute, // 
      ])
      .registerPath("security_subroles");
  }
}
mixin(EntityCalls!("SecuritySubRoleEntity"));

version(test_library) {
  unittest {
    assert(SecuritySubRoleEntity);
  
  auto entity = SecuritySubRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}