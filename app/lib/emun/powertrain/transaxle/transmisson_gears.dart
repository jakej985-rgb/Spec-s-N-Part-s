enum TransmissionGears {
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten;

  static TransmissionGears fromString(String str) {
    switch (str) {
      case '3':
        return TransmissionGears.three;
      case '4':
        return TransmissionGears.four;
      case '5':
        return TransmissionGears.five;
      case '6':
        return TransmissionGears.six;
      case '7':
        return TransmissionGears.seven;
      case '8':
        return TransmissionGears.eight;
      case '9':
        return TransmissionGears.nine;
      case '10':
        return TransmissionGears.ten;
      default:
        throw ArgumentError('Invalid transmission gears: $str');
    }
  }
}
