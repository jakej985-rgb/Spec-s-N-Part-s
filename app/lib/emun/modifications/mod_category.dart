enum ModCategory {
  engine,
  suspension,
  wheelsTires,
  drivetrain,
  exhaust,
  interior,
  exterior,
  electricalLighting,
  other;

  String get displayName {
    switch (this) {
      case ModCategory.engine:
        return 'Engine';
      case ModCategory.suspension:
        return 'Suspension';
      case ModCategory.wheelsTires:
        return 'Wheels & Tires';
      case ModCategory.drivetrain:
        return 'Drivetrain';
      case ModCategory.exhaust:
        return 'Exhaust';
      case ModCategory.interior:
        return 'Interior';
      case ModCategory.exterior:
        return 'Exterior';
      case ModCategory.electricalLighting:
        return 'Electrical & Lighting';
      case ModCategory.other:
        return 'Other';
    }
  }

  static ModCategory fromString(String str) {
    return ModCategory.values.firstWhere(
      (e) => e.name == str,
      orElse: () => ModCategory.other,
    );
  }
}
