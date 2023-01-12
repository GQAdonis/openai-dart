//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class ListFineTunesResponse {
  /// Returns a new [ListFineTunesResponse] instance.
  ListFineTunesResponse({
    required this.object,
    this.data = const [],
  });

  String object;

  List<FineTune> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListFineTunesResponse &&
     other.object == object &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListFineTunesResponse[object=$object, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'object'] = this.object;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListFineTunesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListFineTunesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListFineTunesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListFineTunesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListFineTunesResponse(
        object: mapValueOfType<String>(json, r'object')!,
        data: FineTune.listFromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ListFineTunesResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListFineTunesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListFineTunesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListFineTunesResponse> mapFromJson(dynamic json) {
    final map = <String, ListFineTunesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListFineTunesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListFineTunesResponse-objects as value to a dart map
  static Map<String, List<ListFineTunesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListFineTunesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListFineTunesResponse.listFromJson(entry.value, growable: growable,);
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
    'data',
  };
}

