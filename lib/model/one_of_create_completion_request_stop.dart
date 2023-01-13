part of openai.api;

class OneOfCreateCompletionRequestStop {
  
  OneOfCreateCompletionRequestStop();

  @override
  String toString() {
    return 'OneOfCreateCompletionRequestStop[]';
  }

  OneOfCreateCompletionRequestStop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfCreateCompletionRequestStop> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfCreateCompletionRequestStop>() : json.map((value) => new OneOfCreateCompletionRequestStop.fromJson(value)).toList();
  }

  static Map<String, OneOfCreateCompletionRequestStop> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfCreateCompletionRequestStop>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfCreateCompletionRequestStop.fromJson(value));
    }
    return map;
  }
}
