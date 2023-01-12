//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateModerationResponseResultsInnerCategoryScores {
  /// Returns a new [CreateModerationResponseResultsInnerCategoryScores] instance.
  CreateModerationResponseResultsInnerCategoryScores({
    required this.hate,
    required this.hateSlashThreatening,
    required this.selfHarm,
    required this.sexual,
    required this.sexualSlashMinors,
    required this.violence,
    required this.violenceSlashGraphic,
  });

  num hate;

  num hateSlashThreatening;

  num selfHarm;

  num sexual;

  num sexualSlashMinors;

  num violence;

  num violenceSlashGraphic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateModerationResponseResultsInnerCategoryScores &&
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
  String toString() => 'CreateModerationResponseResultsInnerCategoryScores[hate=$hate, hateSlashThreatening=$hateSlashThreatening, selfHarm=$selfHarm, sexual=$sexual, sexualSlashMinors=$sexualSlashMinors, violence=$violence, violenceSlashGraphic=$violenceSlashGraphic]';

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

  /// Returns a new [CreateModerationResponseResultsInnerCategoryScores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateModerationResponseResultsInnerCategoryScores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateModerationResponseResultsInnerCategoryScores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateModerationResponseResultsInnerCategoryScores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateModerationResponseResultsInnerCategoryScores(
        hate: json[r'hate'] == null
            ? null
            : num.parse(json[r'hate'].toString()),
        hateSlashThreatening: json[r'hate/threatening'] == null
            ? null
            : num.parse(json[r'hate/threatening'].toString()),
        selfHarm: json[r'self-harm'] == null
            ? null
            : num.parse(json[r'self-harm'].toString()),
        sexual: json[r'sexual'] == null
            ? null
            : num.parse(json[r'sexual'].toString()),
        sexualSlashMinors: json[r'sexual/minors'] == null
            ? null
            : num.parse(json[r'sexual/minors'].toString()),
        violence: json[r'violence'] == null
            ? null
            : num.parse(json[r'violence'].toString()),
        violenceSlashGraphic: json[r'violence/graphic'] == null
            ? null
            : num.parse(json[r'violence/graphic'].toString()),
      );
    }
    return null;
  }

  static List<CreateModerationResponseResultsInnerCategoryScores>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateModerationResponseResultsInnerCategoryScores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateModerationResponseResultsInnerCategoryScores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateModerationResponseResultsInnerCategoryScores> mapFromJson(dynamic json) {
    final map = <String, CreateModerationResponseResultsInnerCategoryScores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationResponseResultsInnerCategoryScores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateModerationResponseResultsInnerCategoryScores-objects as value to a dart map
  static Map<String, List<CreateModerationResponseResultsInnerCategoryScores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateModerationResponseResultsInnerCategoryScores>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateModerationResponseResultsInnerCategoryScores.listFromJson(entry.value, growable: growable,);
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

