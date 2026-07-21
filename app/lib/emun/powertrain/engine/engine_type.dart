enum EngineType {
  gasoline,
  diesel,
  electric,
  hybrid;

  static EngineType fromString(String str) {
    switch (str) {
      case 'Gasoline':
        return EngineType.gasoline;
      case 'Diesel':
        return EngineType.diesel;
      case 'Electric':
        return EngineType.electric;
      case 'Hybrid':
        return EngineType.hybrid;
      default:
        throw ArgumentError('Invalid engine type: $str');
    }
  }
}
