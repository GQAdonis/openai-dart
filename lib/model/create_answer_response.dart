//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateAnswerResponse {
  /// Returns a new [CreateAnswerResponse] instance.
  CreateAnswerResponse({
    this.object,
    this.model,
    this.searchModel,
    this.completion,
    this.answers = const [],
    this.selectedDocuments = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchModel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? completion;

  List<String> answers;

  List<CreateAnswerResponseSelectedDocumentsInner> selectedDocuments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAnswerResponse &&
     other.object == object &&
     other.model == model &&
     other.searchModel == searchModel &&
     other.completion == completion &&
     other.answers == answers &&
     other.selectedDocuments == selectedDocuments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (object == null ? 0 : object!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (searchModel == null ? 0 : searchModel!.hashCode) +
    (completion == null ? 0 : completion!.hashCode) +
    (answers.hashCode) +
    (selectedDocuments.hashCode);

  @override
  String toString() => 'CreateAnswerResponse[object=$object, model=$model, searchModel=$searchModel, completion=$completion, answers=$answers, selectedDocuments=$selectedDocuments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.searchModel != null) {
      json[r'search_model'] = this.searchModel;
    } else {
      json[r'search_model'] = null;
    }
    if (this.completion != null) {
      json[r'completion'] = this.completion;
    } else {
      json[r'completion'] = null;
    }
      json[r'answers'] = this.answers;
      json[r'selected_documents'] = this.selectedDocuments;
    return json;
  }

  /// Returns a new [CreateAnswerResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAnswerResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAnswerResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAnswerResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAnswerResponse(
        object: mapValueOfType<String>(json, r'object'),
        model: mapValueOfType<String>(json, r'model'),
        searchModel: mapValueOfType<String>(json, r'search_model'),
        completion: mapValueOfType<String>(json, r'completion'),
        answers: json[r'answers'] is List
            ? (json[r'answers'] as List).cast<String>()
            : const [],
        selectedDocuments: CreateAnswerResponseSelectedDocumentsInner.listFromJson(json[r'selected_documents']) ?? const [],
      );
    }
    return null;
  }

  static List<CreateAnswerResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAnswerResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAnswerResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAnswerResponse> mapFromJson(dynamic json) {
    final map = <String, CreateAnswerResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAnswerResponse-objects as value to a dart map
  static Map<String, List<CreateAnswerResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAnswerResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAnswerResponse.listFromJson(entry.value, growable: growable,);
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

