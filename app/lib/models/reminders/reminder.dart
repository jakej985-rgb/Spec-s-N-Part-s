import '../../emun/reminders/reminder_type.dart';

class Reminder {
  final String id;
  final String vehicleId;
  final ReminderType type;
  final String title;
  final String? description;
  final DateTime? dueDate;
  final int? dueMileage;
  final bool isCompleted;
  final DateTime? snoozedUntil;
  final DateTime createdAt;
  final DateTime updatedAt;

  Reminder({
    required this.id,
    required this.vehicleId,
    required this.type,
    required this.title,
    this.description,
    this.dueDate,
    this.dueMileage,
    this.isCompleted = false,
    this.snoozedUntil,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) {
    return Reminder(
      id: json['id'],
      vehicleId: json['vehicleId'],
      type: ReminderType.fromString(json['type']),
      title: json['title'],
      description: json['description'],
      dueDate: json['dueDate'] != null ? DateTime.parse(json['dueDate']) : null,
      dueMileage: json['dueMileage'],
      isCompleted: json['isCompleted'] ?? false,
      snoozedUntil:
          json['snoozedUntil'] != null
              ? DateTime.parse(json['snoozedUntil'])
              : null,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'vehicleId': vehicleId,
    'type': type.name,
    'title': title,
    'description': description,
    'dueDate': dueDate?.toIso8601String(),
    'dueMileage': dueMileage,
    'isCompleted': isCompleted,
    'snoozedUntil': snoozedUntil?.toIso8601String(),
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };

  Reminder copyWith({
    String? id,
    String? vehicleId,
    ReminderType? type,
    String? title,
    String? description,
    DateTime? dueDate,
    int? dueMileage,
    bool? isCompleted,
    DateTime? snoozedUntil,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Reminder(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      dueMileage: dueMileage ?? this.dueMileage,
      isCompleted: isCompleted ?? this.isCompleted,
      snoozedUntil: snoozedUntil ?? this.snoozedUntil,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
