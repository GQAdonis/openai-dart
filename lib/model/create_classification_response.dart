part of openai.api;

class CreateClassificationResponse {
  
  String object = null;

  String model = null;

  String searchModel = null;

  String completion = null;

  String label = null;

  List<CreateClassificationResponseSelectedExamples> selectedExamples = [];

  CreateClassificationResponse();

  @override
  String toString() {
    return 'CreateClassificationResponse[object=$object, model=$model, searchModel=$searchModel, completion=$completion, label=$label, selectedExamples=$selectedExamples, ]';
  }

  CreateClassificationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    model = json['model'];
    searchModel = json['search_model'];
    completion = json['completion'];
    label = json['label'];
    selectedExamples = CreateClassificationResponseSelectedExamples.listFromJson(json['selected_examples']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'model': model,
      'search_model': searchModel,
      'completion': completion,
      'label': label,
      'selected_examples': selectedExamples
     };
  }

  static List<CreateClassificationResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateClassificationResponse>() : json.map((value) => new CreateClassificationResponse.fromJson(value)).toList();
  }

  static Map<String, CreateClassificationResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateClassificationResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateClassificationResponse.fromJson(value));
    }
    return map;
  }
}
