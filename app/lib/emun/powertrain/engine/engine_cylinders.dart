enum EngineCylinders {
  three,
  four,
  five,
  six,
  eight,
  ten,
  twelve;

  static EngineCylinders fromString(String str) {
    switch (str) {
      case '3':
        return EngineCylinders.three;
      case '4':
        return EngineCylinders.four;
      case '5':
        return EngineCylinders.five;
      case '6':
        return EngineCylinders.six;
      case '8':
        return EngineCylinders.eight;
      case '10':
        return EngineCylinders.ten;
      case '12':
        return EngineCylinders.twelve;
      default:
        throw ArgumentError('Invalid engine cylinders: $str');
    }
  }
}
