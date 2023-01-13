part of openai.api;

class OneOfCreateCompletionRequestPrompt {
  
  OneOfCreateCompletionRequestPrompt();

  @override
  String toString() {
    return 'OneOfCreateCompletionRequestPrompt[]';
  }

  OneOfCreateCompletionRequestPrompt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfCreateCompletionRequestPrompt> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfCreateCompletionRequestPrompt>() : json.map((value) => new OneOfCreateCompletionRequestPrompt.fromJson(value)).toList();
  }

  static Map<String, OneOfCreateCompletionRequestPrompt> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfCreateCompletionRequestPrompt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfCreateCompletionRequestPrompt.fromJson(value));
    }
    return map;
  }
}
