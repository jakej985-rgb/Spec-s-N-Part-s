enum PhotoType {
  service,
  powertrain,
  exterior,
  interior,
  document,
  other;

  String get displayName {
    switch (this) {
      case PhotoType.service:
        return 'Service';
      case PhotoType.powertrain:
        return 'Powertrain';
      case PhotoType.exterior:
        return 'Exterior';
      case PhotoType.interior:
        return 'Interior';
      case PhotoType.document:
        return 'Document';
      case PhotoType.other:
        return 'Other';
    }
  }
}
