part of openai.api;

class CreateEmbeddingResponseUsage {
  
  int promptTokens = null;

  int totalTokens = null;

  CreateEmbeddingResponseUsage();

  @override
  String toString() {
    return 'CreateEmbeddingResponseUsage[promptTokens=$promptTokens, totalTokens=$totalTokens, ]';
  }

  CreateEmbeddingResponseUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    promptTokens = json['prompt_tokens'];
    totalTokens = json['total_tokens'];
  }

  Map<String, dynamic> toJson() {
    return {
      'prompt_tokens': promptTokens,
      'total_tokens': totalTokens
     };
  }

  static List<CreateEmbeddingResponseUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEmbeddingResponseUsage>() : json.map((value) => new CreateEmbeddingResponseUsage.fromJson(value)).toList();
  }

  static Map<String, CreateEmbeddingResponseUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEmbeddingResponseUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEmbeddingResponseUsage.fromJson(value));
    }
    return map;
  }
}
