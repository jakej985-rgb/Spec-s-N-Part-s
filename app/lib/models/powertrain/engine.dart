import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_form.dart';
import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_cylinders.dart';
import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_type.dart';

class Engine {
  final EngineType engineType;
  final EngineCylinders engineCylinders;
  final EngineForm engineForm;
  final String engineSize;

  Engine({
    required this.engineType,
    required this.engineSize,
    required this.engineCylinders,
    required this.engineForm,
  });

  factory Engine.fromJson(Map<String, dynamic> json) {
    return Engine(
      engineType: EngineType.fromString(json['engineType']),
      engineCylinders: EngineCylinders.fromString(json['engineCylinders']),
      engineForm: EngineForm.fromString(json['engineForm']),
      engineSize: json['engineSize'],
    );
  }

  Map<String, dynamic> toJson() => {
    'engineType': engineType.name,
    'engineCylinders': engineCylinders.name,
    'engineForm': engineForm.name,
    'engineSize': engineSize,
  };
}
