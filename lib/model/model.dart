//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class Model {
  /// Returns a new [Model] instance.
  Model({
    required this.id,
    required this.object,
    required this.created,
    required this.ownedBy,
  });

  String id;

  String object;

  int created;

  String ownedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model &&
     other.id == id &&
     other.object == object &&
     other.created == created &&
     other.ownedBy == ownedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (created.hashCode) +
    (ownedBy.hashCode);

  @override
  String toString() => 'Model[id=$id, object=$object, created=$created, ownedBy=$ownedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'created'] = this.created;
      json[r'owned_by'] = this.ownedBy;
    return json;
  }

  /// Returns a new [Model] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        created: mapValueOfType<int>(json, r'created')!,
        ownedBy: mapValueOfType<String>(json, r'owned_by')!,
      );
    }
    return null;
  }

  static List<Model>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model> mapFromJson(dynamic json) {
    final map = <String, Model>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model-objects as value to a dart map
  static Map<String, List<Model>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Model>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model.listFromJson(entry.value, growable: growable,);
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
    'created',
    'owned_by',
  };
}

