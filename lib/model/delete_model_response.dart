part of openai.api;

class DeleteModelResponse {
  
  String id = null;

  String object = null;

  bool deleted = null;

  DeleteModelResponse();

  @override
  String toString() {
    return 'DeleteModelResponse[id=$id, object=$object, deleted=$deleted, ]';
  }

  DeleteModelResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'deleted': deleted
     };
  }

  static List<DeleteModelResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeleteModelResponse>() : json.map((value) => new DeleteModelResponse.fromJson(value)).toList();
  }

  static Map<String, DeleteModelResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeleteModelResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeleteModelResponse.fromJson(value));
    }
    return map;
  }
}
