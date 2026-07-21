enum ReminderType {
  maintenance,
  registration,
  inspection,
  custom;

  String get displayName {
    switch (this) {
      case ReminderType.maintenance:
        return 'Maintenance';
      case ReminderType.registration:
        return 'Registration';
      case ReminderType.inspection:
        return 'Inspection';
      case ReminderType.custom:
        return 'Custom';
    }
  }

  static ReminderType fromString(String str) {
    return ReminderType.values.firstWhere(
      (e) => e.name == str,
      orElse: () => ReminderType.custom,
    );
  }
}
