part of openai.api;

class FineTuneEvent {
  
  String object = null;

  int createdAt = null;

  String level = null;

  String message = null;

  FineTuneEvent();

  @override
  String toString() {
    return 'FineTuneEvent[object=$object, createdAt=$createdAt, level=$level, message=$message, ]';
  }

  FineTuneEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    createdAt = json['created_at'];
    level = json['level'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'created_at': createdAt,
      'level': level,
      'message': message
     };
  }

  static List<FineTuneEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<FineTuneEvent>() : json.map((value) => new FineTuneEvent.fromJson(value)).toList();
  }

  static Map<String, FineTuneEvent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FineTuneEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FineTuneEvent.fromJson(value));
    }
    return map;
  }
}
