//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class ImagesResponse {
  /// Returns a new [ImagesResponse] instance.
  ImagesResponse({
    required this.created,
    this.data = const [],
  });

  int created;

  List<ImagesResponseDataInner> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImagesResponse &&
     other.created == created &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ImagesResponse[created=$created, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created'] = this.created;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ImagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImagesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImagesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImagesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImagesResponse(
        created: mapValueOfType<int>(json, r'created')!,
        data: ImagesResponseDataInner.listFromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ImagesResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImagesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImagesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImagesResponse> mapFromJson(dynamic json) {
    final map = <String, ImagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImagesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImagesResponse-objects as value to a dart map
  static Map<String, List<ImagesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImagesResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created',
    'data',
  };
}
