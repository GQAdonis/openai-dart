part of openai.api;

class OneOfCreateAnswerRequestStop {
  
  OneOfCreateAnswerRequestStop();

  @override
  String toString() {
    return 'OneOfCreateAnswerRequestStop[]';
  }

  OneOfCreateAnswerRequestStop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfCreateAnswerRequestStop> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfCreateAnswerRequestStop>() : json.map((value) => new OneOfCreateAnswerRequestStop.fromJson(value)).toList();
  }

  static Map<String, OneOfCreateAnswerRequestStop> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfCreateAnswerRequestStop>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfCreateAnswerRequestStop.fromJson(value));
    }
    return map;
  }
}
