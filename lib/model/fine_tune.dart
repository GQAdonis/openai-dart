//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class FineTune {
  /// Returns a new [FineTune] instance.
  FineTune({
    required this.id,
    required this.object,
    required this.createdAt,
    required this.updatedAt,
    required this.model,
    required this.fineTunedModel,
    required this.organizationId,
    required this.status,
    required this.hyperparams,
    this.trainingFiles = const [],
    this.validationFiles = const [],
    this.resultFiles = const [],
    this.events = const [],
  });

  String id;

  String object;

  int createdAt;

  int updatedAt;

  String model;

  String? fineTunedModel;

  String organizationId;

  String status;

  Object hyperparams;

  List<OpenAIFile> trainingFiles;

  List<OpenAIFile> validationFiles;

  List<OpenAIFile> resultFiles;

  List<FineTuneEvent> events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FineTune &&
     other.id == id &&
     other.object == object &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.model == model &&
     other.fineTunedModel == fineTunedModel &&
     other.organizationId == organizationId &&
     other.status == status &&
     other.hyperparams == hyperparams &&
     other.trainingFiles == trainingFiles &&
     other.validationFiles == validationFiles &&
     other.resultFiles == resultFiles &&
     other.events == events;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (model.hashCode) +
    (fineTunedModel == null ? 0 : fineTunedModel!.hashCode) +
    (organizationId.hashCode) +
    (status.hashCode) +
    (hyperparams.hashCode) +
    (trainingFiles.hashCode) +
    (validationFiles.hashCode) +
    (resultFiles.hashCode) +
    (events.hashCode);

  @override
  String toString() => 'FineTune[id=$id, object=$object, createdAt=$createdAt, updatedAt=$updatedAt, model=$model, fineTunedModel=$fineTunedModel, organizationId=$organizationId, status=$status, hyperparams=$hyperparams, trainingFiles=$trainingFiles, validationFiles=$validationFiles, resultFiles=$resultFiles, events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created_at'] = this.createdAt;
      json[r'updated_at'] = this.updatedAt;
      json[r'model'] = this.model;
    if (this.fineTunedModel != null) {
      json[r'fine_tuned_model'] = this.fineTunedModel;
    } else {
      json[r'fine_tuned_model'] = null;
    }
      json[r'organization_id'] = this.organizationId;
      json[r'status'] = this.status;
      json[r'hyperparams'] = this.hyperparams;
      json[r'training_files'] = this.trainingFiles;
      json[r'validation_files'] = this.validationFiles;
      json[r'result_files'] = this.resultFiles;
      json[r'events'] = this.events;
    return json;
  }

  /// Returns a new [FineTune] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FineTune? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FineTune[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FineTune[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FineTune(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        updatedAt: mapValueOfType<int>(json, r'updated_at')!,
        model: mapValueOfType<String>(json, r'model')!,
        fineTunedModel: mapValueOfType<String>(json, r'fine_tuned_model'),
        organizationId: mapValueOfType<String>(json, r'organization_id')!,
        status: mapValueOfType<String>(json, r'status')!,
        hyperparams: mapValueOfType<Object>(json, r'hyperparams')!,
        trainingFiles: OpenAIFile.listFromJson(json[r'training_files'])!,
        validationFiles: OpenAIFile.listFromJson(json[r'validation_files'])!,
        resultFiles: OpenAIFile.listFromJson(json[r'result_files'])!,
        events: FineTuneEvent.listFromJson(json[r'events']) ?? const [],
      );
    }
    return null;
  }

  static List<FineTune>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FineTune>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FineTune.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FineTune> mapFromJson(dynamic json) {
    final map = <String, FineTune>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FineTune.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FineTune-objects as value to a dart map
  static Map<String, List<FineTune>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FineTune>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FineTune.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'created_at',
    'updated_at',
    'model',
    'fine_tuned_model',
    'organization_id',
    'status',
    'hyperparams',
    'training_files',
    'validation_files',
    'result_files',
  };
}

