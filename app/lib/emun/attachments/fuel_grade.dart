enum FuelGrade {
  regular,
  mid,
  premium,
  diesel;

  String get displayName {
    switch (this) {
      case FuelGrade.regular:
        return 'Regular';
      case FuelGrade.mid:
        return 'Mid';
      case FuelGrade.premium:
        return 'Premium';
      case FuelGrade.diesel:
        return 'Diesel';
    }
  }
}
