part of openai.api;

class CreateSearchResponse {
  
  String object = null;

  String model = null;

  List<CreateSearchResponseData> data = [];

  CreateSearchResponse();

  @override
  String toString() {
    return 'CreateSearchResponse[object=$object, model=$model, data=$data, ]';
  }

  CreateSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    model = json['model'];
    data = CreateSearchResponseData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'model': model,
      'data': data
     };
  }

  static List<CreateSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateSearchResponse>() : json.map((value) => new CreateSearchResponse.fromJson(value)).toList();
  }

  static Map<String, CreateSearchResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateSearchResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateSearchResponse.fromJson(value));
    }
    return map;
  }
}
