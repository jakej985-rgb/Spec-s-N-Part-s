class MaintenanceRecord {
  final String id;
  final String vehicleId;
  final DateTime date;
  final int mileage;
  final String serviceType;
  final String description;
  final double cost;
  final String? notes;
  final String currency;
  //  final List<Attachment> attachments;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? syncedAt;

  MaintenanceRecord({
    required this.id,
    required this.vehicleId,
    required this.date,
    required this.mileage,
    required this.serviceType,
    required this.description,
    required this.cost,
    required this.currency,
    this.notes,
    //    required this.attachments,
    required this.createdAt,
    required this.updatedAt,
    this.syncedAt,
  });
}
