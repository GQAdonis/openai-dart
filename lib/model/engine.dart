part of openai.api;

class Engine {
  
  String id = null;

  String object = null;

  int created = null;

  bool ready = null;

  Engine();

  @override
  String toString() {
    return 'Engine[id=$id, object=$object, created=$created, ready=$ready, ]';
  }

  Engine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    created = json['created'];
    ready = json['ready'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'ready': ready
     };
  }

  static List<Engine> listFromJson(List<dynamic> json) {
    return json == null ? new List<Engine>() : json.map((value) => new Engine.fromJson(value)).toList();
  }

  static Map<String, Engine> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Engine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Engine.fromJson(value));
    }
    return map;
  }
}
