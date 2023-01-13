part of openai.api;

class CreateEditResponse {
  
  String id = null;

  String object = null;

  int created = null;

  String model = null;

  List<CreateCompletionResponseChoices> choices = [];

  CreateCompletionResponseUsage usage = null;

  CreateEditResponse();

  @override
  String toString() {
    return 'CreateEditResponse[id=$id, object=$object, created=$created, model=$model, choices=$choices, usage=$usage, ]';
  }

  CreateEditResponse.fromJson(Map<String, dynamic> json) {
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

  static List<CreateEditResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEditResponse>() : json.map((value) => new CreateEditResponse.fromJson(value)).toList();
  }

  static Map<String, CreateEditResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEditResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEditResponse.fromJson(value));
    }
    return map;
  }
}
