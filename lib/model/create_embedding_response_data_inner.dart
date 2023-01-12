//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateEmbeddingResponseDataInner {
  /// Returns a new [CreateEmbeddingResponseDataInner] instance.
  CreateEmbeddingResponseDataInner({
    required this.index,
    required this.object,
    this.embedding = const [],
  });

  int index;

  String object;

  List<num> embedding;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEmbeddingResponseDataInner &&
     other.index == index &&
     other.object == object &&
     other.embedding == embedding;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (index.hashCode) +
    (object.hashCode) +
    (embedding.hashCode);

  @override
  String toString() => 'CreateEmbeddingResponseDataInner[index=$index, object=$object, embedding=$embedding]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'index'] = this.index;
      json[r'object'] = this.object;
      json[r'embedding'] = this.embedding;
    return json;
  }

  /// Returns a new [CreateEmbeddingResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEmbeddingResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEmbeddingResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEmbeddingResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEmbeddingResponseDataInner(
        index: mapValueOfType<int>(json, r'index')!,
        object: mapValueOfType<String>(json, r'object')!,
        embedding: json[r'embedding'] is List
            ? (json[r'embedding'] as List).cast<num>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateEmbeddingResponseDataInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmbeddingResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmbeddingResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEmbeddingResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, CreateEmbeddingResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmbeddingResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEmbeddingResponseDataInner-objects as value to a dart map
  static Map<String, List<CreateEmbeddingResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEmbeddingResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmbeddingResponseDataInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'index',
    'object',
    'embedding',
  };
}

