//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateSearchResponseDataInner {
  /// Returns a new [CreateSearchResponseDataInner] instance.
  CreateSearchResponseDataInner({
    this.object,
    this.document,
    this.score,
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
  int? document;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSearchResponseDataInner &&
     other.object == object &&
     other.document == document &&
     other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object == null ? 0 : object!.hashCode) +
    (document == null ? 0 : document!.hashCode) +
    (score == null ? 0 : score!.hashCode);

  @override
  String toString() => 'CreateSearchResponseDataInner[object=$object, document=$document, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSearchResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSearchResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSearchResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSearchResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSearchResponseDataInner(
        object: mapValueOfType<String>(json, r'object'),
        document: mapValueOfType<int>(json, r'document'),
        score: json[r'score'] == null
            ? null
            : num.parse(json[r'score'].toString()),
      );
    }
    return null;
  }

  static List<CreateSearchResponseDataInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSearchResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSearchResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSearchResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, CreateSearchResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSearchResponseDataInner-objects as value to a dart map
  static Map<String, List<CreateSearchResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSearchResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchResponseDataInner.listFromJson(entry.value, growable: growable,);
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

