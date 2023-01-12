//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class DeleteModelResponse {
  /// Returns a new [DeleteModelResponse] instance.
  DeleteModelResponse({
    required this.id,
    required this.object,
    required this.deleted,
  });

  String id;

  String object;

  bool deleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteModelResponse &&
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
  String toString() => 'DeleteModelResponse[id=$id, object=$object, deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'deleted'] = this.deleted;
    return json;
  }

  /// Returns a new [DeleteModelResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteModelResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteModelResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteModelResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteModelResponse(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        deleted: mapValueOfType<bool>(json, r'deleted')!,
      );
    }
    return null;
  }

  static List<DeleteModelResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteModelResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteModelResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteModelResponse> mapFromJson(dynamic json) {
    final map = <String, DeleteModelResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteModelResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteModelResponse-objects as value to a dart map
  static Map<String, List<DeleteModelResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteModelResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteModelResponse.listFromJson(entry.value, growable: growable,);
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

