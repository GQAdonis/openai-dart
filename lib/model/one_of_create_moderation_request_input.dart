part of openai.api;

class OneOfCreateModerationRequestInput {
  
  OneOfCreateModerationRequestInput();

  @override
  String toString() {
    return 'OneOfCreateModerationRequestInput[]';
  }

  OneOfCreateModerationRequestInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfCreateModerationRequestInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfCreateModerationRequestInput>() : json.map((value) => new OneOfCreateModerationRequestInput.fromJson(value)).toList();
  }

  static Map<String, OneOfCreateModerationRequestInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfCreateModerationRequestInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfCreateModerationRequestInput.fromJson(value));
    }
    return map;
  }
}
