part of openai.api;

class CreateModerationResponse {
  
  String id = null;

  String model = null;

  List<CreateModerationResponseResults> results = [];

  CreateModerationResponse();

  @override
  String toString() {
    return 'CreateModerationResponse[id=$id, model=$model, results=$results, ]';
  }

  CreateModerationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    model = json['model'];
    results = CreateModerationResponseResults.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'model': model,
      'results': results
     };
  }

  static List<CreateModerationResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateModerationResponse>() : json.map((value) => new CreateModerationResponse.fromJson(value)).toList();
  }

  static Map<String, CreateModerationResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateModerationResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateModerationResponse.fromJson(value));
    }
    return map;
  }
}
