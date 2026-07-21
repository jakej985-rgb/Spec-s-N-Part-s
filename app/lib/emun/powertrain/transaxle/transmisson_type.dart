enum TransmissionType {
  manual,
  automatic,
  cvt;

  static TransmissionType fromString(String str) {
    switch (str) {
      case 'Manual':
        return TransmissionType.manual;
      case 'Automatic':
        return TransmissionType.automatic;
      case 'CVT':
        return TransmissionType.cvt;
      default:
        throw ArgumentError('Invalid transmission type: $str');
    }
  }
}
