//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class DeleteFileResponse {
  /// Returns a new [DeleteFileResponse] instance.
  DeleteFileResponse({
    required this.id,
    required this.object,
    required this.deleted,
  });

  String id;

  String object;

  bool deleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteFileResponse &&
     other.id == id &&
     other.object == object &&
     other.deleted == deleted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (deleted.hashCode);

  @override
  String toString() => 'DeleteFileResponse[id=$id, object=$object, deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'deleted'] = this.deleted;
    return json;
  }

  /// Returns a new [DeleteFileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteFileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteFileResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteFileResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteFileResponse(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        deleted: mapValueOfType<bool>(json, r'deleted')!,
      );
    }
    return null;
  }

  static List<DeleteFileResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteFileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteFileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteFileResponse> mapFromJson(dynamic json) {
    final map = <String, DeleteFileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteFileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteFileResponse-objects as value to a dart map
  static Map<String, List<DeleteFileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteFileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteFileResponse.listFromJson(entry.value, growable: growable,);
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
    'deleted',
  };
}

