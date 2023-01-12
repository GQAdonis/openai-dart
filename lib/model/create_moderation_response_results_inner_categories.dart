//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateModerationResponseResultsInnerCategories {
  /// Returns a new [CreateModerationResponseResultsInnerCategories] instance.
  CreateModerationResponseResultsInnerCategories({
    required this.hate,
    required this.hateSlashThreatening,
    required this.selfHarm,
    required this.sexual,
    required this.sexualSlashMinors,
    required this.violence,
    required this.violenceSlashGraphic,
  });

  bool hate;

  bool hateSlashThreatening;

  bool selfHarm;

  bool sexual;

  bool sexualSlashMinors;

  bool violence;

  bool violenceSlashGraphic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateModerationResponseResultsInnerCategories &&
     other.hate == hate &&
     other.hateSlashThreatening == hateSlashThreatening &&
     other.selfHarm == selfHarm &&
     other.sexual == sexual &&
     other.sexualSlashMinors == sexualSlashMinors &&
     other.violence == violence &&
     other.violenceSlashGraphic == violenceSlashGraphic;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hate.hashCode) +
    (hateSlashThreatening.hashCode) +
    (selfHarm.hashCode) +
    (sexual.hashCode) +
    (sexualSlashMinors.hashCode) +
    (violence.hashCode) +
    (violenceSlashGraphic.hashCode);

  @override
  String toString() => 'CreateModerationResponseResultsInnerCategories[hate=$hate, hateSlashThreatening=$hateSlashThreatening, selfHarm=$selfHarm, sexual=$sexual, sexualSlashMinors=$sexualSlashMinors, violence=$violence, violenceSlashGraphic=$violenceSlashGraphic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hate'] = this.hate;
      json[r'hate/threatening'] = this.hateSlashThreatening;
      json[r'self-harm'] = this.selfHarm;
      json[r'sexual'] = this.sexual;
      json[r'sexual/minors'] = this.sexualSlashMinors;
      json[r'violence'] = this.violence;
      json[r'violence/graphic'] = this.violenceSlashGraphic;
    return json;
  }

  /// Returns a new [CreateModerationResponseResultsInnerCategories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateModerationResponseResultsInnerCategories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateModerationResponseResultsInnerCategories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateModerationResponseResultsInnerCategories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateModerationResponseResultsInnerCategories(
        hate: mapValueOfType<bool>(json, r'hate')!,
        hateSlashThreatening: mapValueOfType<bool>(json, r'hate/threatening')!,
        selfHarm: mapValueOfType<bool>(json, r'self-harm')!,
        sexual: mapValueOfType<bool>(json, r'sexual')!,
        sexualSlashMinors: mapValueOfType<bool>(json, r'sexual/minors')!,
        violence: mapValueOfType<bool>(json, r'violence')!,
        violenceSlashGraphic: mapValueOfType<bool>(json, r'violence/graphic')!,
      );
    }
    return null;
  }

  static List<CreateModerationResponseResultsInnerCategories>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateModerationResponseResultsInnerCategories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateModerationResponseResultsInnerCategories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateModerationResponseResultsInnerCategories> mapFromJson(dynamic json) {
    final map = <String, CreateModerationResponseResultsInnerCategories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationResponseResultsInnerCategories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateModerationResponseResultsInnerCategories-objects as value to a dart map
  static Map<String, List<CreateModerationResponseResultsInnerCategories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateModerationResponseResultsInnerCategories>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationResponseResultsInnerCategories.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hate',
    'hate/threatening',
    'self-harm',
    'sexual',
    'sexual/minors',
    'violence',
    'violence/graphic',
  };
}

