//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateSearchResponse {
  /// Returns a new [CreateSearchResponse] instance.
  CreateSearchResponse({
    this.object,
    this.model,
    this.data = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  List<CreateSearchResponseDataInner> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSearchResponse &&
     other.object == object &&
     other.model == model &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object == null ? 0 : object!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'CreateSearchResponse[object=$object, model=$model, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [CreateSearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSearchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSearchResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSearchResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSearchResponse(
        object: mapValueOfType<String>(json, r'object'),
        model: mapValueOfType<String>(json, r'model'),
        data: CreateSearchResponseDataInner.listFromJson(json[r'data']) ?? const [],
      );
    }
    return null;
  }

  static List<CreateSearchResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSearchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSearchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSearchResponse> mapFromJson(dynamic json) {
    final map = <String, CreateSearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSearchResponse-objects as value to a dart map
  static Map<String, List<CreateSearchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchResponse.listFromJson(entry.value, growable: growable,);
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

