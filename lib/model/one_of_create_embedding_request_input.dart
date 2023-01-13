part of openai.api;

class OneOfCreateEmbeddingRequestInput {
  
  OneOfCreateEmbeddingRequestInput();

  @override
  String toString() {
    return 'OneOfCreateEmbeddingRequestInput[]';
  }

  OneOfCreateEmbeddingRequestInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfCreateEmbeddingRequestInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfCreateEmbeddingRequestInput>() : json.map((value) => new OneOfCreateEmbeddingRequestInput.fromJson(value)).toList();
  }

  static Map<String, OneOfCreateEmbeddingRequestInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfCreateEmbeddingRequestInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfCreateEmbeddingRequestInput.fromJson(value));
    }
    return map;
  }
}
