//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateAnswerResponseSelectedDocumentsInner {
  /// Returns a new [CreateAnswerResponseSelectedDocumentsInner] instance.
  CreateAnswerResponseSelectedDocumentsInner({
    this.document,
    this.text,
  });

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
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAnswerResponseSelectedDocumentsInner &&
     other.document == document &&
     other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (document == null ? 0 : document!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'CreateAnswerResponseSelectedDocumentsInner[document=$document, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAnswerResponseSelectedDocumentsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAnswerResponseSelectedDocumentsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAnswerResponseSelectedDocumentsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAnswerResponseSelectedDocumentsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAnswerResponseSelectedDocumentsInner(
        document: mapValueOfType<int>(json, r'document'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<CreateAnswerResponseSelectedDocumentsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAnswerResponseSelectedDocumentsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAnswerResponseSelectedDocumentsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAnswerResponseSelectedDocumentsInner> mapFromJson(dynamic json) {
    final map = <String, CreateAnswerResponseSelectedDocumentsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerResponseSelectedDocumentsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAnswerResponseSelectedDocumentsInner-objects as value to a dart map
  static Map<String, List<CreateAnswerResponseSelectedDocumentsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAnswerResponseSelectedDocumentsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerResponseSelectedDocumentsInner.listFromJson(entry.value, growable: growable,);
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

