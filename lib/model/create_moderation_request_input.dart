//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateModerationRequestInput {
  /// Returns a new [CreateModerationRequestInput] instance.
  CreateModerationRequestInput({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateModerationRequestInput &&

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis

  @override
  String toString() => 'CreateModerationRequestInput[]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    return json;
  }

  /// Returns a new [CreateModerationRequestInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateModerationRequestInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateModerationRequestInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateModerationRequestInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateModerationRequestInput(
      );
    }
    return null;
  }

  static List<CreateModerationRequestInput>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateModerationRequestInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateModerationRequestInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateModerationRequestInput> mapFromJson(dynamic json) {
    final map = <String, CreateModerationRequestInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationRequestInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateModerationRequestInput-objects as value to a dart map
  static Map<String, List<CreateModerationRequestInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateModerationRequestInput>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationRequestInput.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
