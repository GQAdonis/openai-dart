//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class Engine {
  /// Returns a new [Engine] instance.
  Engine({
    required this.id,
    required this.object,
    required this.created,
    required this.ready,
  });

  String id;

  String object;

  int? created;

  bool ready;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Engine &&
     other.id == id &&
     other.object == object &&
     other.created == created &&
     other.ready == ready;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (ready.hashCode);

  @override
  String toString() => 'Engine[id=$id, object=$object, created=$created, ready=$ready]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
      json[r'ready'] = this.ready;
    return json;
  }

  /// Returns a new [Engine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Engine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Engine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Engine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Engine(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        created: mapValueOfType<int>(json, r'created'),
        ready: mapValueOfType<bool>(json, r'ready')!,
      );
    }
    return null;
  }

  static List<Engine>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Engine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Engine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Engine> mapFromJson(dynamic json) {
    final map = <String, Engine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Engine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Engine-objects as value to a dart map
  static Map<String, List<Engine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Engine>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Engine.listFromJson(entry.value, growable: growable,);
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
    'ready',
  };
}

