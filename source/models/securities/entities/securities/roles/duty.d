module models.administrations.entities.security.roles.duty;

@safe:
import models.administrations;

// 
class DSecurityRoleDutyEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("admin_securityroleduties");
  }
}
mixin(EntityCalls!("SecurityRoleDutyEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleDutyEntity);
  
  auto entity = SecurityRoleDutyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}