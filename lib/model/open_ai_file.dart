//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class OpenAIFile {
  /// Returns a new [OpenAIFile] instance.
  OpenAIFile({
    required this.id,
    required this.object,
    required this.bytes,
    required this.createdAt,
    required this.filename,
    required this.purpose,
    this.status,
    this.statusDetails,
  });

  String id;

  String object;

  int bytes;

  int createdAt;

  String filename;

  String purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  Object? statusDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenAIFile &&
     other.id == id &&
     other.object == object &&
     other.bytes == bytes &&
     other.createdAt == createdAt &&
     other.filename == filename &&
     other.purpose == purpose &&
     other.status == status &&
     other.statusDetails == statusDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (bytes.hashCode) +
    (createdAt.hashCode) +
    (filename.hashCode) +
    (purpose.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusDetails == null ? 0 : statusDetails!.hashCode);

  @override
  String toString() => 'OpenAIFile[id=$id, object=$object, bytes=$bytes, createdAt=$createdAt, filename=$filename, purpose=$purpose, status=$status, statusDetails=$statusDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'bytes'] = this.bytes;
      json[r'created_at'] = this.createdAt;
      json[r'filename'] = this.filename;
      json[r'purpose'] = this.purpose;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusDetails != null) {
      json[r'status_details'] = this.statusDetails;
    } else {
      json[r'status_details'] = null;
    }
    return json;
  }

  /// Returns a new [OpenAIFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenAIFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenAIFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenAIFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenAIFile(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        bytes: mapValueOfType<int>(json, r'bytes')!,
        createdAt: mapValueOfType<int>(json, r'created_at')!,
        filename: mapValueOfType<String>(json, r'filename')!,
        purpose: mapValueOfType<String>(json, r'purpose')!,
        status: mapValueOfType<String>(json, r'status'),
        statusDetails: mapValueOfType<Object>(json, r'status_details'),
      );
    }
    return null;
  }

  static List<OpenAIFile>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenAIFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenAIFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenAIFile> mapFromJson(dynamic json) {
    final map = <String, OpenAIFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenAIFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenAIFile-objects as value to a dart map
  static Map<String, List<OpenAIFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenAIFile>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenAIFile.listFromJson(entry.value, growable: growable,);
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
    'bytes',
    'created_at',
    'filename',
    'purpose',
  };
}

