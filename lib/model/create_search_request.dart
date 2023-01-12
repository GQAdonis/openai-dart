//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateSearchRequest {
  /// Returns a new [CreateSearchRequest] instance.
  CreateSearchRequest({
    required this.query,
    this.documents = const [],
    this.file,
    this.maxRerank = 200,
    this.returnMetadata = false,
    this.user,
  });

  /// Query to search against the documents.
  String query;

  /// Up to 200 documents to search over, provided as a list of strings.  The maximum document length (in tokens) is 2034 minus the number of tokens in the query.  You should specify either `documents` or a `file`, but not both. 
  List<String>? documents;

  /// The ID of an uploaded file that contains documents to search over.  You should specify either `documents` or a `file`, but not both. 
  String? file;

  /// The maximum number of documents to be re-ranked and returned by search.  This flag only takes effect when `file` is set. 
  ///
  /// Minimum value: 1
  int? maxRerank;

  /// A special boolean flag for showing metadata. If set to `true`, each document entry in the returned JSON will contain a \"metadata\" field.  This flag only takes effect when `file` is set. 
  bool? returnMetadata;

  /// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSearchRequest &&
     other.query == query &&
     other.documents == documents &&
     other.file == file &&
     other.maxRerank == maxRerank &&
     other.returnMetadata == returnMetadata &&
     other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (query.hashCode) +
    (documents == null ? 0 : documents!.hashCode) +
    (file == null ? 0 : file!.hashCode) +
    (maxRerank == null ? 0 : maxRerank!.hashCode) +
    (returnMetadata == null ? 0 : returnMetadata!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'CreateSearchRequest[query=$query, documents=$documents, file=$file, maxRerank=$maxRerank, returnMetadata=$returnMetadata, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'query'] = this.query;
    if (this.documents != null) {
      json[r'documents'] = this.documents;
    } else {
      json[r'documents'] = null;
    }
    if (this.file != null) {
      json[r'file'] = this.file;
    } else {
      json[r'file'] = null;
    }
    if (this.maxRerank != null) {
      json[r'max_rerank'] = this.maxRerank;
    } else {
      json[r'max_rerank'] = null;
    }
    if (this.returnMetadata != null) {
      json[r'return_metadata'] = this.returnMetadata;
    } else {
      json[r'return_metadata'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSearchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSearchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSearchRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSearchRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSearchRequest(
        query: mapValueOfType<String>(json, r'query')!,
        documents: json[r'documents'] is List
            ? (json[r'documents'] as List).cast<String>()
            : const [],
        file: mapValueOfType<String>(json, r'file'),
        maxRerank: mapValueOfType<int>(json, r'max_rerank') ?? 200,
        returnMetadata: mapValueOfType<bool>(json, r'return_metadata') ?? false,
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<CreateSearchRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSearchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSearchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSearchRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSearchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSearchRequest-objects as value to a dart map
  static Map<String, List<CreateSearchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSearchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSearchRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'query',
  };
}

