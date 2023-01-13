part of openai.api;

class CreateCompletionResponse {
  
  String id = null;

  String object = null;

  int created = null;

  String model = null;

  List<CreateCompletionResponseChoices> choices = [];

  CreateCompletionResponseUsage usage = null;

  CreateCompletionResponse();

  @override
  String toString() {
    return 'CreateCompletionResponse[id=$id, object=$object, created=$created, model=$model, choices=$choices, usage=$usage, ]';
  }

  CreateCompletionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    created = json['created'];
    model = json['model'];
    choices = CreateCompletionResponseChoices.listFromJson(json['choices']);
    usage = new CreateCompletionResponseUsage.fromJson(json['usage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'model': model,
      'choices': choices,
      'usage': usage
     };
  }

  static List<CreateCompletionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateCompletionResponse>() : json.map((value) => new CreateCompletionResponse.fromJson(value)).toList();
  }

  static Map<String, CreateCompletionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateCompletionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateCompletionResponse.fromJson(value));
    }
    return map;
  }
}
