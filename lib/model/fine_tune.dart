part of openai.api;

class FineTune {
  
  String id = null;

  String object = null;

  int createdAt = null;

  int updatedAt = null;

  String model = null;

  String fineTunedModel = null;

  String organizationId = null;

  String status = null;

  Object hyperparams = null;

  List<OpenAIFile> trainingFiles = [];

  List<OpenAIFile> validationFiles = [];

  List<OpenAIFile> resultFiles = [];

  List<FineTuneEvent> events = [];

  FineTune();

  @override
  String toString() {
    return 'FineTune[id=$id, object=$object, createdAt=$createdAt, updatedAt=$updatedAt, model=$model, fineTunedModel=$fineTunedModel, organizationId=$organizationId, status=$status, hyperparams=$hyperparams, trainingFiles=$trainingFiles, validationFiles=$validationFiles, resultFiles=$resultFiles, events=$events, ]';
  }

  FineTune.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    model = json['model'];
    fineTunedModel = json['fine_tuned_model'];
    organizationId = json['organization_id'];
    status = json['status'];
    hyperparams = new Object.fromJson(json['hyperparams']);
    trainingFiles = OpenAIFile.listFromJson(json['training_files']);
    validationFiles = OpenAIFile.listFromJson(json['validation_files']);
    resultFiles = OpenAIFile.listFromJson(json['result_files']);
    events = FineTuneEvent.listFromJson(json['events']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'model': model,
      'fine_tuned_model': fineTunedModel,
      'organization_id': organizationId,
      'status': status,
      'hyperparams': hyperparams,
      'training_files': trainingFiles,
      'validation_files': validationFiles,
      'result_files': resultFiles,
      'events': events
     };
  }

  static List<FineTune> listFromJson(List<dynamic> json) {
    return json == null ? new List<FineTune>() : json.map((value) => new FineTune.fromJson(value)).toList();
  }

  static Map<String, FineTune> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FineTune>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FineTune.fromJson(value));
    }
    return map;
  }
}
