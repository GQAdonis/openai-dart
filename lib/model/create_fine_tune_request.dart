//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateFineTuneRequest {
  /// Returns a new [CreateFineTuneRequest] instance.
  CreateFineTuneRequest({
    required this.trainingFile,
    this.validationFile,
    this.model = 'curie',
    this.nEpochs = 4,
    this.batchSize,
    this.learningRateMultiplier,
    this.promptLossWeight = 0.01,
    this.computeClassificationMetrics = false,
    this.classificationNClasses,
    this.classificationPositiveClass,
    this.classificationBetas = const [],
    this.suffix,
  });

  /// The ID of an uploaded file that contains training data.  See [upload file](/docs/api-reference/files/upload) for how to upload a file.  Your dataset must be formatted as a JSONL file, where each training example is a JSON object with the keys \"prompt\" and \"completion\". Additionally, you must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning/creating-training-data) for more details. 
  String trainingFile;

  /// The ID of an uploaded file that contains validation data.  If you provide this file, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in the [fine-tuning results file](/docs/guides/fine-tuning/analyzing-your-fine-tuned-model). Your train and validation data should be mutually exclusive.  Your dataset must be formatted as a JSONL file, where each validation example is a JSON object with the keys \"prompt\" and \"completion\". Additionally, you must upload your file with the purpose `fine-tune`.  See the [fine-tuning guide](/docs/guides/fine-tuning/creating-training-data) for more details. 
  String? validationFile;

  /// The name of the base model to fine-tune. You can select one of \"ada\", \"babbage\", \"curie\", \"davinci\", or a fine-tuned model created after 2022-04-21. To learn more about these models, see the [Models](https://beta.openai.com/docs/models) documentation. 
  String? model;

  /// The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset. 
  int? nEpochs;

  /// The batch size to use for training. The batch size is the number of training examples used to train a single forward and backward pass.  By default, the batch size will be dynamically configured to be ~0.2% of the number of examples in the training set, capped at 256 - in general, we've found that larger batch sizes tend to work better for larger datasets. 
  int? batchSize;

  /// The learning rate multiplier to use for training. The fine-tuning learning rate is the original learning rate used for pretraining multiplied by this value.  By default, the learning rate multiplier is the 0.05, 0.1, or 0.2 depending on final `batch_size` (larger learning rates tend to perform better with larger batch sizes). We recommend experimenting with values in the range 0.02 to 0.2 to see what produces the best results. 
  num? learningRateMultiplier;

  /// The weight to use for loss on the prompt tokens. This controls how much the model tries to learn to generate the prompt (as compared to the completion which always has a weight of 1.0), and can add a stabilizing effect to training when completions are short.  If prompts are extremely long (relative to completions), it may make sense to reduce this weight so as to avoid over-prioritizing learning the prompt. 
  num? promptLossWeight;

  /// If set, we calculate classification-specific metrics such as accuracy and F-1 score using the validation set at the end of every epoch. These metrics can be viewed in the [results file](/docs/guides/fine-tuning/analyzing-your-fine-tuned-model).  In order to compute classification metrics, you must provide a `validation_file`. Additionally, you must specify `classification_n_classes` for multiclass classification or `classification_positive_class` for binary classification. 
  bool? computeClassificationMetrics;

  /// The number of classes in a classification task.  This parameter is required for multiclass classification. 
  int? classificationNClasses;

  /// The positive class in binary classification.  This parameter is needed to generate precision, recall, and F1 metrics when doing binary classification. 
  String? classificationPositiveClass;

  /// If this is provided, we calculate F-beta scores at the specified beta values. The F-beta score is a generalization of F-1 score. This is only used for binary classification.  With a beta of 1 (i.e. the F-1 score), precision and recall are given the same weight. A larger beta score puts more weight on recall and less on precision. A smaller beta score puts more weight on precision and less on recall. 
  List<num>? classificationBetas;

  /// A string of up to 40 characters that will be added to your fine-tuned model name.  For example, a `suffix` of \"custom-model-name\" would produce a model name like `ada:ft-your-org:custom-model-name-2022-02-15-04-21-04`. 
  String? suffix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFineTuneRequest &&
     other.trainingFile == trainingFile &&
     other.validationFile == validationFile &&
     other.model == model &&
     other.nEpochs == nEpochs &&
     other.batchSize == batchSize &&
     other.learningRateMultiplier == learningRateMultiplier &&
     other.promptLossWeight == promptLossWeight &&
     other.computeClassificationMetrics == computeClassificationMetrics &&
     other.classificationNClasses == classificationNClasses &&
     other.classificationPositiveClass == classificationPositiveClass &&
     other.classificationBetas == classificationBetas &&
     other.suffix == suffix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trainingFile.hashCode) +
    (validationFile == null ? 0 : validationFile!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (nEpochs == null ? 0 : nEpochs!.hashCode) +
    (batchSize == null ? 0 : batchSize!.hashCode) +
    (learningRateMultiplier == null ? 0 : learningRateMultiplier!.hashCode) +
    (promptLossWeight == null ? 0 : promptLossWeight!.hashCode) +
    (computeClassificationMetrics == null ? 0 : computeClassificationMetrics!.hashCode) +
    (classificationNClasses == null ? 0 : classificationNClasses!.hashCode) +
    (classificationPositiveClass == null ? 0 : classificationPositiveClass!.hashCode) +
    (classificationBetas == null ? 0 : classificationBetas!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode);

  @override
  String toString() => 'CreateFineTuneRequest[trainingFile=$trainingFile, validationFile=$validationFile, model=$model, nEpochs=$nEpochs, batchSize=$batchSize, learningRateMultiplier=$learningRateMultiplier, promptLossWeight=$promptLossWeight, computeClassificationMetrics=$computeClassificationMetrics, classificationNClasses=$classificationNClasses, classificationPositiveClass=$classificationPositiveClass, classificationBetas=$classificationBetas, suffix=$suffix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'training_file'] = this.trainingFile;
    if (this.validationFile != null) {
      json[r'validation_file'] = this.validationFile;
    } else {
      json[r'validation_file'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.nEpochs != null) {
      json[r'n_epochs'] = this.nEpochs;
    } else {
      json[r'n_epochs'] = null;
    }
    if (this.batchSize != null) {
      json[r'batch_size'] = this.batchSize;
    } else {
      json[r'batch_size'] = null;
    }
    if (this.learningRateMultiplier != null) {
      json[r'learning_rate_multiplier'] = this.learningRateMultiplier;
    } else {
      json[r'learning_rate_multiplier'] = null;
    }
    if (this.promptLossWeight != null) {
      json[r'prompt_loss_weight'] = this.promptLossWeight;
    } else {
      json[r'prompt_loss_weight'] = null;
    }
    if (this.computeClassificationMetrics != null) {
      json[r'compute_classification_metrics'] = this.computeClassificationMetrics;
    } else {
      json[r'compute_classification_metrics'] = null;
    }
    if (this.classificationNClasses != null) {
      json[r'classification_n_classes'] = this.classificationNClasses;
    } else {
      json[r'classification_n_classes'] = null;
    }
    if (this.classificationPositiveClass != null) {
      json[r'classification_positive_class'] = this.classificationPositiveClass;
    } else {
      json[r'classification_positive_class'] = null;
    }
    if (this.classificationBetas != null) {
      json[r'classification_betas'] = this.classificationBetas;
    } else {
      json[r'classification_betas'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    return json;
  }

  /// Returns a new [CreateFineTuneRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFineTuneRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateFineTuneRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateFineTuneRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateFineTuneRequest(
        trainingFile: mapValueOfType<String>(json, r'training_file')!,
        validationFile: mapValueOfType<String>(json, r'validation_file'),
        model: mapValueOfType<String>(json, r'model') ?? 'curie',
        nEpochs: mapValueOfType<int>(json, r'n_epochs') ?? 4,
        batchSize: mapValueOfType<int>(json, r'batch_size'),
        learningRateMultiplier: json[r'learning_rate_multiplier'] == null
            ? null
            : num.parse(json[r'learning_rate_multiplier'].toString()),
        promptLossWeight: json[r'prompt_loss_weight'] == null
            ? 0.01
            : num.parse(json[r'prompt_loss_weight'].toString()),
        computeClassificationMetrics: mapValueOfType<bool>(json, r'compute_classification_metrics') ?? false,
        classificationNClasses: mapValueOfType<int>(json, r'classification_n_classes'),
        classificationPositiveClass: mapValueOfType<String>(json, r'classification_positive_class'),
        classificationBetas: json[r'classification_betas'] is List
            ? (json[r'classification_betas'] as List).cast<num>()
            : const [],
        suffix: mapValueOfType<String>(json, r'suffix'),
      );
    }
    return null;
  }

  static List<CreateFineTuneRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateFineTuneRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFineTuneRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFineTuneRequest> mapFromJson(dynamic json) {
    final map = <String, CreateFineTuneRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFineTuneRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFineTuneRequest-objects as value to a dart map
  static Map<String, List<CreateFineTuneRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateFineTuneRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFineTuneRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'training_file',
  };
}

