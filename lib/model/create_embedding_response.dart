//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateEmbeddingResponse {
  /// Returns a new [CreateEmbeddingResponse] instance.
  CreateEmbeddingResponse({
    required this.object,
    required this.model,
    this.data = const [],
    required this.usage,
  });

  String object;

  String model;

  List<CreateEmbeddingResponseDataInner> data;

  CreateEmbeddingResponseUsage usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEmbeddingResponse &&
     other.object == object &&
     other.model == model &&
     other.data == data &&
     other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object.hashCode) +
    (model.hashCode) +
    (data.hashCode) +
    (usage.hashCode);

  @override
  String toString() => 'CreateEmbeddingResponse[object=$object, model=$model, data=$data, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'object'] = this.object;
      json[r'model'] = this.model;
      json[r'data'] = this.data;
      json[r'usage'] = this.usage;
    return json;
  }

  /// Returns a new [CreateEmbeddingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEmbeddingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEmbeddingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEmbeddingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEmbeddingResponse(
        object: mapValueOfType<String>(json, r'object')!,
        model: mapValueOfType<String>(json, r'model')!,
        data: CreateEmbeddingResponseDataInner.listFromJson(json[r'data'])!,
        usage: CreateEmbeddingResponseUsage.fromJson(json[r'usage'])!,
      );
    }
    return null;
  }

  static List<CreateEmbeddingResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmbeddingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmbeddingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEmbeddingResponse> mapFromJson(dynamic json) {
    final map = <String, CreateEmbeddingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmbeddingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEmbeddingResponse-objects as value to a dart map
  static Map<String, List<CreateEmbeddingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEmbeddingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmbeddingResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'object',
    'model',
    'data',
    'usage',
  };
}

