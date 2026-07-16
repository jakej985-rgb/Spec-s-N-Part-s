class MaintenanceRecord {
  final String id;
  final String vehicleId;
  final DateTime date;
  final int mileage;
  final String type;
  final String description;
  final double cost;
  final String currency;
  final List<Attachment> attachments;

  MaintenanceRecord({
    required this.id,
    required this.vehicleId,
    required this.date,
    required this.mileage,
    required this.type,
    required this.description,
    required this.cost,
    required this.currency,
    required this.attachments,
  });

  factory MaintenanceRecord.fromJson(Map<String, dynamic> json) {
    return MaintenanceRecord(
      id: json['id'],
      vehicleId: json['vehicleId'],
      date: json['date'],
      mileage: json['mileage'],
      type: json['type'],
      description: json['description'],
      cost: json['cost'],
      currency: json['currency'],
      attachments: json['attachments'],
    );
  }
}
