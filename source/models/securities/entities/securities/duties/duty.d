module models.securities.entities.security.duties.duty;

@safe:
import models.administrations;

class DSecurityDutyEntity : DOOPEntity {
  mixin(EntityThis!("SecurityDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilege": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("security_duties");
  }
}
mixin(EntityCalls!("SecurityDutyEntity"));

version(test_library) {
  unittest {
    assert(SecurityDutyEntity);
  
  auto entity = SecurityDutyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}