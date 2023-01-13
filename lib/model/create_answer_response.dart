part of openai.api;

class CreateAnswerResponse {
  
  String object = null;

  String model = null;

  String searchModel = null;

  String completion = null;

  List<String> answers = [];

  List<CreateAnswerResponseSelectedDocuments> selectedDocuments = [];

  CreateAnswerResponse();

  @override
  String toString() {
    return 'CreateAnswerResponse[object=$object, model=$model, searchModel=$searchModel, completion=$completion, answers=$answers, selectedDocuments=$selectedDocuments, ]';
  }

  CreateAnswerResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    model = json['model'];
    searchModel = json['search_model'];
    completion = json['completion'];
    answers = (json['answers'] as List).map((item) => item as String).toList();
    selectedDocuments = CreateAnswerResponseSelectedDocuments.listFromJson(json['selected_documents']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'model': model,
      'search_model': searchModel,
      'completion': completion,
      'answers': answers,
      'selected_documents': selectedDocuments
     };
  }

  static List<CreateAnswerResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateAnswerResponse>() : json.map((value) => new CreateAnswerResponse.fromJson(value)).toList();
  }

  static Map<String, CreateAnswerResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateAnswerResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateAnswerResponse.fromJson(value));
    }
    return map;
  }
}
