//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class ImagesResponseDataInner {
  /// Returns a new [ImagesResponseDataInner] instance.
  ImagesResponseDataInner({
    this.url,
    this.b64Json,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? b64Json;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImagesResponseDataInner &&
     other.url == url &&
     other.b64Json == b64Json;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (b64Json == null ? 0 : b64Json!.hashCode);

  @override
  String toString() => 'ImagesResponseDataInner[url=$url, b64Json=$b64Json]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.b64Json != null) {
      json[r'b64_json'] = this.b64Json;
    } else {
      json[r'b64_json'] = null;
    }
    return json;
  }

  /// Returns a new [ImagesResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImagesResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImagesResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImagesResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImagesResponseDataInner(
        url: mapValueOfType<String>(json, r'url'),
        b64Json: mapValueOfType<String>(json, r'b64_json'),
      );
    }
    return null;
  }

  static List<ImagesResponseDataInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImagesResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImagesResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImagesResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, ImagesResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImagesResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImagesResponseDataInner-objects as value to a dart map
  static Map<String, List<ImagesResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImagesResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImagesResponseDataInner.listFromJson(entry.value, growable: growable,);
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

