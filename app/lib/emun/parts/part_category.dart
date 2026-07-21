enum PartCategory {
  maintenance,
  engine,
  suspension,
  brakes,
  electrical,
  body,
  interior,
  fluids,
  other;

  String get displayName {
    switch (this) {
      case PartCategory.maintenance:
        return 'Maintenance';
      case PartCategory.engine:
        return 'Engine';
      case PartCategory.suspension:
        return 'Suspension';
      case PartCategory.brakes:
        return 'Brakes';
      case PartCategory.electrical:
        return 'Electrical';
      case PartCategory.body:
        return 'Body';
      case PartCategory.interior:
        return 'Interior';
      case PartCategory.fluids:
        return 'Fluids';
      case PartCategory.other:
        return 'Other';
    }
  }

  static PartCategory fromString(String str) {
    return PartCategory.values.firstWhere(
      (e) => e.name == str,
      orElse: () => PartCategory.other,
    );
  }
}
