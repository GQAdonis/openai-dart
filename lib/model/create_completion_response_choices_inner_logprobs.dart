//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateCompletionResponseChoicesInnerLogprobs {
  /// Returns a new [CreateCompletionResponseChoicesInnerLogprobs] instance.
  CreateCompletionResponseChoicesInnerLogprobs({
    this.tokens = const [],
    this.tokenLogprobs = const [],
    this.topLogprobs = const [],
    this.textOffset = const [],
  });

  List<String> tokens;

  List<num> tokenLogprobs;

  List<Object> topLogprobs;

  List<int> textOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCompletionResponseChoicesInnerLogprobs &&
     other.tokens == tokens &&
     other.tokenLogprobs == tokenLogprobs &&
     other.topLogprobs == topLogprobs &&
     other.textOffset == textOffset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tokens.hashCode) +
    (tokenLogprobs.hashCode) +
    (topLogprobs.hashCode) +
    (textOffset.hashCode);

  @override
  String toString() => 'CreateCompletionResponseChoicesInnerLogprobs[tokens=$tokens, tokenLogprobs=$tokenLogprobs, topLogprobs=$topLogprobs, textOffset=$textOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tokens'] = this.tokens;
      json[r'token_logprobs'] = this.tokenLogprobs;
      json[r'top_logprobs'] = this.topLogprobs;
      json[r'text_offset'] = this.textOffset;
    return json;
  }

  /// Returns a new [CreateCompletionResponseChoicesInnerLogprobs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCompletionResponseChoicesInnerLogprobs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCompletionResponseChoicesInnerLogprobs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCompletionResponseChoicesInnerLogprobs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCompletionResponseChoicesInnerLogprobs(
        tokens: json[r'tokens'] is List
            ? (json[r'tokens'] as List).cast<String>()
            : const [],
        tokenLogprobs: json[r'token_logprobs'] is List
            ? (json[r'token_logprobs'] as List).cast<num>()
            : const [],
        topLogprobs: Object.listFromJson(json[r'top_logprobs']) ?? const [],
        textOffset: json[r'text_offset'] is List
            ? (json[r'text_offset'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateCompletionResponseChoicesInnerLogprobs>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCompletionResponseChoicesInnerLogprobs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCompletionResponseChoicesInnerLogprobs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCompletionResponseChoicesInnerLogprobs> mapFromJson(dynamic json) {
    final map = <String, CreateCompletionResponseChoicesInnerLogprobs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCompletionResponseChoicesInnerLogprobs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCompletionResponseChoicesInnerLogprobs-objects as value to a dart map
  static Map<String, List<CreateCompletionResponseChoicesInnerLogprobs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCompletionResponseChoicesInnerLogprobs>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCompletionResponseChoicesInnerLogprobs.listFromJson(entry.value, growable: growable,);
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

