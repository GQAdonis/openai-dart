//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateEditResponse {
  /// Returns a new [CreateEditResponse] instance.
  CreateEditResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    this.choices = const [],
    required this.usage,
  });

  String id;

  String object;

  int created;

  String model;

  List<CreateCompletionResponseChoicesInner> choices;

  CreateCompletionResponseUsage usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEditResponse &&
     other.id == id &&
     other.object == object &&
     other.created == created &&
     other.model == model &&
     other.choices == choices &&
     other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (created.hashCode) +
    (model.hashCode) +
    (choices.hashCode) +
    (usage.hashCode);

  @override
  String toString() => 'CreateEditResponse[id=$id, object=$object, created=$created, model=$model, choices=$choices, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created'] = this.created;
      json[r'model'] = this.model;
      json[r'choices'] = this.choices;
      json[r'usage'] = this.usage;
    return json;
  }

  /// Returns a new [CreateEditResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEditResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEditResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEditResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEditResponse(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        created: mapValueOfType<int>(json, r'created')!,
        model: mapValueOfType<String>(json, r'model')!,
        choices: CreateCompletionResponseChoicesInner.listFromJson(json[r'choices'])!,
        usage: CreateCompletionResponseUsage.fromJson(json[r'usage'])!,
      );
    }
    return null;
  }

  static List<CreateEditResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEditResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEditResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEditResponse> mapFromJson(dynamic json) {
    final map = <String, CreateEditResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEditResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEditResponse-objects as value to a dart map
  static Map<String, List<CreateEditResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEditResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEditResponse.listFromJson(entry.value, growable: growable,);
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
    'created',
    'model',
    'choices',
    'usage',
  };
}

