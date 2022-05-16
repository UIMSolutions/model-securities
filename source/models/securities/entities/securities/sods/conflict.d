module models.securities.entities.securities.sods.conflict;

@safe:
import models.administrations;

// 
class DSecuritySegregationOfDutiesConflictEntity : DOOPEntity {
  mixin(EntityThis!("SecuritySegregationOfDutiesConflictEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "segregationOfDutiesRule":  StringAttribute, // 
        "segregationOfDutiesRuleValidFrom":  StringAttribute, // 
        "segregationOfDutiesRuleValidTo":  StringAttribute, // 
        "segregationOfDutiesRuleName":  StringAttribute, // 
        "user":  StringAttribute, // 
        "existingRole":  StringAttribute, // 
        "existingRoleIdentifier":  StringAttribute, // 
        "existingRoleName":  StringAttribute, // 
        "existingDuty":  StringAttribute, // 
        "existingDutyIdentifier":  StringAttribute, // 
        "existingDutyName":  StringAttribute, // 
        "newRole":  StringAttribute, // 
        "newRoleIdentifier":  StringAttribute, // 
        "newRoleName":  StringAttribute, // 
        "newDuty":  StringAttribute, // 
        "newDutyIdentifier":  StringAttribute, // 
        "newDutyName":  StringAttribute, // 
        "assignmentMode":  StringAttribute, // 
        "reasonForOverride":  StringAttribute, // 
        "resolution":  StringAttribute, // 
      ])
      .registerPath("security_sodconflicts");
  }
}
mixin(EntityCalls!("SecuritySegregationOfDutiesConflictEntity"));

version(test_library) {
  unittest {
    assert(SecuritySegregationOfDutiesConflictEntity);
  
  auto entity = SecuritySegregationOfDutiesConflictEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}