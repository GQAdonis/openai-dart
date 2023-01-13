part of openai.api;

class CreateCompletionResponseUsage {
  
  int promptTokens = null;

  int completionTokens = null;

  int totalTokens = null;

  CreateCompletionResponseUsage();

  @override
  String toString() {
    return 'CreateCompletionResponseUsage[promptTokens=$promptTokens, completionTokens=$completionTokens, totalTokens=$totalTokens, ]';
  }

  CreateCompletionResponseUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    promptTokens = json['prompt_tokens'];
    completionTokens = json['completion_tokens'];
    totalTokens = json['total_tokens'];
  }

  Map<String, dynamic> toJson() {
    return {
      'prompt_tokens': promptTokens,
      'completion_tokens': completionTokens,
      'total_tokens': totalTokens
     };
  }

  static List<CreateCompletionResponseUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateCompletionResponseUsage>() : json.map((value) => new CreateCompletionResponseUsage.fromJson(value)).toList();
  }

  static Map<String, CreateCompletionResponseUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateCompletionResponseUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateCompletionResponseUsage.fromJson(value));
    }
    return map;
  }
}
