//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateEditRequest {
  /// Returns a new [CreateEditRequest] instance.
  CreateEditRequest({
    required this.model,
    this.input = '',
    required this.instruction,
    this.n = 1,
    this.temperature = 1,
    this.topP = 1,
  });

  /// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them.
  String model;

  /// The input text to use as a starting point for the edit.
  String? input;

  /// The instruction that tells the model how to edit the prompt.
  String instruction;

  /// How many edits to generate for the input and instruction.
  ///
  /// Minimum value: 1
  /// Maximum value: 20
  int? n;

  /// What [sampling temperature](https://towardsdatascience.com/how-to-sample-from-language-models-682bceb97277) to use. Higher values means the model will take more risks. Try 0.9 for more creative applications, and 0 (argmax sampling) for ones with a well-defined answer.  We generally recommend altering this or `top_p` but not both. 
  ///
  /// Minimum value: 0
  /// Maximum value: 2
  num? temperature;

  /// An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or `temperature` but not both. 
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  num? topP;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEditRequest &&
     other.model == model &&
     other.input == input &&
     other.instruction == instruction &&
     other.n == n &&
     other.temperature == temperature &&
     other.topP == topP;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (instruction.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (temperature == null ? 0 : temperature!.hashCode) +
    (topP == null ? 0 : topP!.hashCode);

  @override
  String toString() => 'CreateEditRequest[model=$model, input=$input, instruction=$instruction, n=$n, temperature=$temperature, topP=$topP]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
      json[r'instruction'] = this.instruction;
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.temperature != null) {
      json[r'temperature'] = this.temperature;
    } else {
      json[r'temperature'] = null;
    }
    if (this.topP != null) {
      json[r'top_p'] = this.topP;
    } else {
      json[r'top_p'] = null;
    }
    return json;
  }

  /// Returns a new [CreateEditRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEditRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEditRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEditRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEditRequest(
        model: mapValueOfType<String>(json, r'model')!,
        input: mapValueOfType<String>(json, r'input') ?? '',
        instruction: mapValueOfType<String>(json, r'instruction')!,
        n: mapValueOfType<int>(json, r'n') ?? 1,
        temperature: json[r'temperature'] == null
            ? 1
            : num.parse(json[r'temperature'].toString()),
        topP: json[r'top_p'] == null
            ? 1
            : num.parse(json[r'top_p'].toString()),
      );
    }
    return null;
  }

  static List<CreateEditRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEditRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEditRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEditRequest> mapFromJson(dynamic json) {
    final map = <String, CreateEditRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEditRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEditRequest-objects as value to a dart map
  static Map<String, List<CreateEditRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEditRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEditRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'model',
    'instruction',
  };
}

