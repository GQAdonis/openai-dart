part of openai.api;

class Model {
  
  String id = null;

  String object = null;

  int created = null;

  String ownedBy = null;

  Model();

  @override
  String toString() {
    return 'Model[id=$id, object=$object, created=$created, ownedBy=$ownedBy, ]';
  }

  Model.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    created = json['created'];
    ownedBy = json['owned_by'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'owned_by': ownedBy
     };
  }

  static List<Model> listFromJson(List<dynamic> json) {
    return json == null ? new List<Model>() : json.map((value) => new Model.fromJson(value)).toList();
  }

  static Map<String, Model> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Model>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Model.fromJson(value));
    }
    return map;
  }
}
