//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateModerationRequest {
  /// Returns a new [CreateModerationRequest] instance.
  CreateModerationRequest({
    required this.input,
    this.model = 'text-moderation-latest',
  });

  CreateModerationRequestInput input;

  /// Two content moderations models are available: `text-moderation-stable` and `text-moderation-latest`.  The default is `text-moderation-latest` which will be automatically upgraded over time. This ensures you are always using our most accurate model. If you use `text-moderation-stable`, we will provide advanced notice before updating the model. Accuracy of `text-moderation-stable` may be slightly lower than for `text-moderation-latest`. 
  String model;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateModerationRequest &&
     other.input == input &&
     other.model == model;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (input.hashCode) +
    (model.hashCode);

  @override
  String toString() => 'CreateModerationRequest[input=$input, model=$model]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'input'] = this.input;
      json[r'model'] = this.model;
    return json;
  }

  /// Returns a new [CreateModerationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateModerationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateModerationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateModerationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateModerationRequest(
        input: CreateModerationRequestInput.fromJson(json[r'input'])!,
        model: mapValueOfType<String>(json, r'model') ?? 'text-moderation-latest',
      );
    }
    return null;
  }

  static List<CreateModerationRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateModerationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateModerationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateModerationRequest> mapFromJson(dynamic json) {
    final map = <String, CreateModerationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateModerationRequest-objects as value to a dart map
  static Map<String, List<CreateModerationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateModerationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'input',
  };
}

