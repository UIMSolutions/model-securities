module source.Id": UUIDAttribute.entities.security.duties.customization;

@safe:
import models.administrations;

class DSecurityDutyCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SecurityDutyCustomizationsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "XmlObject": StringAttribute, // 
        "IsDisabled	": BooleanAttribute, // 
      ])
      .registerPath("security_dutycustomizations");
  }
}
mixin(EntityCalls!("SecurityDutyCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SecurityDutyCustomizationsEntity);
  
  auto entity = SecurityDutyCustomizationsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}