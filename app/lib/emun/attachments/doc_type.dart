enum DocType {
  invoice,
  receipt,
  manual,
  other;

  String get displayName {
    switch (this) {
      case DocType.invoice:
        return 'Invoice';
      case DocType.receipt:
        return 'Receipt';
      case DocType.manual:
        return 'Manual';
      case DocType.other:
        return 'Other';
    }
  }
}
