import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_form.dart';
import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_cylinders.dart';
import 'package:spec_s_n_part_s/emun/powertrain/engine/engine_type.dart';

class Engine {
  final EngineType type;
  final EngineCylinders cylinders;
  final EngineForm form;
  final String size;

  const Engine({
    required this.type,
    required this.size,
    required this.cylinders,
    required this.form,
  });

  factory Engine.fromJson(Map<String, dynamic> json) {
    return Engine(
      type: EngineType.fromString(json['type'] ?? json['engineType']),
      cylinders: EngineCylinders.fromString(
        json['cylinders'] ?? json['engineCylinders'],
      ),
      form: EngineForm.fromString(json['form'] ?? json['engineForm']),
      size: json['size'] ?? json['engineSize'],
    );
  }

  Map<String, dynamic> toJson() => {
    'type': type.name,
    'cylinders': cylinders.name,
    'form': form.name,
    'size': size,
  };
}
