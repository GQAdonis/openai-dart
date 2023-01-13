part of openai.api;

class CreateEmbeddingResponseData {
  
  int index = null;

  String object = null;

  List<double> embedding = [];

  CreateEmbeddingResponseData();

  @override
  String toString() {
    return 'CreateEmbeddingResponseData[index=$index, object=$object, embedding=$embedding, ]';
  }

  CreateEmbeddingResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    index = json['index'];
    object = json['object'];
    embedding = (json['embedding'] as List).map((item) => item as double).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'object': object,
      'embedding': embedding
     };
  }

  static List<CreateEmbeddingResponseData> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEmbeddingResponseData>() : json.map((value) => new CreateEmbeddingResponseData.fromJson(value)).toList();
  }

  static Map<String, CreateEmbeddingResponseData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEmbeddingResponseData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEmbeddingResponseData.fromJson(value));
    }
    return map;
  }
}
