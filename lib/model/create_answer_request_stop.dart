//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateAnswerRequestStop {
  /// Returns a new [CreateAnswerRequestStop] instance.
  CreateAnswerRequestStop({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAnswerRequestStop &&

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis

  @override
  String toString() => 'CreateAnswerRequestStop[]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    return json;
  }

  /// Returns a new [CreateAnswerRequestStop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAnswerRequestStop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAnswerRequestStop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAnswerRequestStop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAnswerRequestStop(
      );
    }
    return null;
  }

  static List<CreateAnswerRequestStop>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAnswerRequestStop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAnswerRequestStop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAnswerRequestStop> mapFromJson(dynamic json) {
    final map = <String, CreateAnswerRequestStop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerRequestStop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAnswerRequestStop-objects as value to a dart map
  static Map<String, List<CreateAnswerRequestStop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAnswerRequestStop>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerRequestStop.listFromJson(entry.value, growable: growable,);
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

