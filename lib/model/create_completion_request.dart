//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateCompletionRequest {
  /// Returns a new [CreateCompletionRequest] instance.
  CreateCompletionRequest({
    required this.model,
    this.prompt,
    this.suffix,
    this.maxTokens = 16,
    this.temperature = 1,
    this.topP = 1,
    this.n = 1,
    this.stream = false,
    this.logprobs,
    this.echo = false,
    this.stop,
    this.presencePenalty = 0,
    this.frequencyPenalty = 0,
    this.bestOf = 1,
    this.logitBias,
    this.user,
  });

  /// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them.
  String model;

  CreateCompletionRequestPrompt? prompt;

  /// The suffix that comes after a completion of inserted text.
  String? suffix;

  /// The maximum number of [tokens](/tokenizer) to generate in the completion.  The token count of your prompt plus `max_tokens` cannot exceed the model's context length. Most models have a context length of 2048 tokens (except for the newest models, which support 4096). 
  ///
  /// Minimum value: 0
  int? maxTokens;

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

  /// How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`. 
  ///
  /// Minimum value: 1
  /// Maximum value: 128
  int? n;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a `data: [DONE]` message. 
  bool? stream;

  /// Include the log probabilities on the `logprobs` most likely tokens, as well the chosen tokens. For example, if `logprobs` is 5, the API will return a list of the 5 most likely tokens. The API will always return the `logprob` of the sampled token, so there may be up to `logprobs+1` elements in the response.  The maximum value for `logprobs` is 5. If you need more than this, please contact us through our [Help center](https://help.openai.com) and describe your use case. 
  ///
  /// Minimum value: 0
  /// Maximum value: 5
  int? logprobs;

  /// Echo back the prompt in addition to the completion 
  bool? echo;

  CreateCompletionRequestStop? stop;

  /// Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  [See more information about frequency and presence penalties.](/docs/api-reference/parameter-details) 
  ///
  /// Minimum value: -2
  /// Maximum value: 2
  num? presencePenalty;

  /// Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  [See more information about frequency and presence penalties.](/docs/api-reference/parameter-details) 
  ///
  /// Minimum value: -2
  /// Maximum value: 2
  num? frequencyPenalty;

  /// Generates `best_of` completions server-side and returns the \"best\" (the one with the highest log probability per token). Results cannot be streamed.  When used with `n`, `best_of` controls the number of candidate completions and `n` specifies how many to return – `best_of` must be greater than `n`.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`. 
  ///
  /// Minimum value: 0
  /// Maximum value: 20
  int? bestOf;

  /// Modify the likelihood of specified tokens appearing in the completion.  Accepts a json object that maps tokens (specified by their token ID in the GPT tokenizer) to an associated bias value from -100 to 100. You can use this [tokenizer tool](/tokenizer?view=bpe) (which works for both GPT-2 and GPT-3) to convert text to token IDs. Mathematically, the bias is added to the logits generated by the model prior to sampling. The exact effect will vary per model, but values between -1 and 1 should decrease or increase likelihood of selection; values like -100 or 100 should result in a ban or exclusive selection of the relevant token.  As an example, you can pass `{\"50256\": -100}` to prevent the <|endoftext|> token from being generated. 
  Object? logitBias;

  /// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCompletionRequest &&
     other.model == model &&
     other.prompt == prompt &&
     other.suffix == suffix &&
     other.maxTokens == maxTokens &&
     other.temperature == temperature &&
     other.topP == topP &&
     other.n == n &&
     other.stream == stream &&
     other.logprobs == logprobs &&
     other.echo == echo &&
     other.stop == stop &&
     other.presencePenalty == presencePenalty &&
     other.frequencyPenalty == frequencyPenalty &&
     other.bestOf == bestOf &&
     other.logitBias == logitBias &&
     other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode) +
    (maxTokens == null ? 0 : maxTokens!.hashCode) +
    (temperature == null ? 0 : temperature!.hashCode) +
    (topP == null ? 0 : topP!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (stream == null ? 0 : stream!.hashCode) +
    (logprobs == null ? 0 : logprobs!.hashCode) +
    (echo == null ? 0 : echo!.hashCode) +
    (stop == null ? 0 : stop!.hashCode) +
    (presencePenalty == null ? 0 : presencePenalty!.hashCode) +
    (frequencyPenalty == null ? 0 : frequencyPenalty!.hashCode) +
    (bestOf == null ? 0 : bestOf!.hashCode) +
    (logitBias == null ? 0 : logitBias!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'CreateCompletionRequest[model=$model, prompt=$prompt, suffix=$suffix, maxTokens=$maxTokens, temperature=$temperature, topP=$topP, n=$n, stream=$stream, logprobs=$logprobs, echo=$echo, stop=$stop, presencePenalty=$presencePenalty, frequencyPenalty=$frequencyPenalty, bestOf=$bestOf, logitBias=$logitBias, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    if (this.maxTokens != null) {
      json[r'max_tokens'] = this.maxTokens;
    } else {
      json[r'max_tokens'] = null;
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
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    if (this.logprobs != null) {
      json[r'logprobs'] = this.logprobs;
    } else {
      json[r'logprobs'] = null;
    }
    if (this.echo != null) {
      json[r'echo'] = this.echo;
    } else {
      json[r'echo'] = null;
    }
    if (this.stop != null) {
      json[r'stop'] = this.stop;
    } else {
      json[r'stop'] = null;
    }
    if (this.presencePenalty != null) {
      json[r'presence_penalty'] = this.presencePenalty;
    } else {
      json[r'presence_penalty'] = null;
    }
    if (this.frequencyPenalty != null) {
      json[r'frequency_penalty'] = this.frequencyPenalty;
    } else {
      json[r'frequency_penalty'] = null;
    }
    if (this.bestOf != null) {
      json[r'best_of'] = this.bestOf;
    } else {
      json[r'best_of'] = null;
    }
    if (this.logitBias != null) {
      json[r'logit_bias'] = this.logitBias;
    } else {
      json[r'logit_bias'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [CreateCompletionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCompletionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCompletionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCompletionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCompletionRequest(
        model: mapValueOfType<String>(json, r'model')!,
        prompt: CreateCompletionRequestPrompt.fromJson(json[r'prompt']),
        suffix: mapValueOfType<String>(json, r'suffix'),
        maxTokens: mapValueOfType<int>(json, r'max_tokens') ?? 16,
        temperature: json[r'temperature'] == null
            ? 1
            : num.parse(json[r'temperature'].toString()),
        topP: json[r'top_p'] == null
            ? 1
            : num.parse(json[r'top_p'].toString()),
        n: mapValueOfType<int>(json, r'n') ?? 1,
        stream: mapValueOfType<bool>(json, r'stream') ?? false,
        logprobs: mapValueOfType<int>(json, r'logprobs'),
        echo: mapValueOfType<bool>(json, r'echo') ?? false,
        stop: CreateCompletionRequestStop.fromJson(json[r'stop']),
        presencePenalty: json[r'presence_penalty'] == null
            ? 0
            : num.parse(json[r'presence_penalty'].toString()),
        frequencyPenalty: json[r'frequency_penalty'] == null
            ? 0
            : num.parse(json[r'frequency_penalty'].toString()),
        bestOf: mapValueOfType<int>(json, r'best_of') ?? 1,
        logitBias: mapValueOfType<Object>(json, r'logit_bias'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<CreateCompletionRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCompletionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCompletionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCompletionRequest> mapFromJson(dynamic json) {
    final map = <String, CreateCompletionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCompletionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCompletionRequest-objects as value to a dart map
  static Map<String, List<CreateCompletionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCompletionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCompletionRequest.listFromJson(entry.value, growable: growable,);
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
  };
}

