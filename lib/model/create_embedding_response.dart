part of openai.api;

class CreateEmbeddingResponse {
  
  String object = null;

  String model = null;

  List<CreateEmbeddingResponseData> data = [];

  CreateEmbeddingResponseUsage usage = null;

  CreateEmbeddingResponse();

  @override
  String toString() {
    return 'CreateEmbeddingResponse[object=$object, model=$model, data=$data, usage=$usage, ]';
  }

  CreateEmbeddingResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    model = json['model'];
    data = CreateEmbeddingResponseData.listFromJson(json['data']);
    usage = new CreateEmbeddingResponseUsage.fromJson(json['usage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'model': model,
      'data': data,
      'usage': usage
     };
  }

  static List<CreateEmbeddingResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEmbeddingResponse>() : json.map((value) => new CreateEmbeddingResponse.fromJson(value)).toList();
  }

  static Map<String, CreateEmbeddingResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEmbeddingResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEmbeddingResponse.fromJson(value));
    }
    return map;
  }
}
