part of openai.api;

class DeleteFileResponse {
  
  String id = null;

  String object = null;

  bool deleted = null;

  DeleteFileResponse();

  @override
  String toString() {
    return 'DeleteFileResponse[id=$id, object=$object, deleted=$deleted, ]';
  }

  DeleteFileResponse.fromJson(Map<String, dynamic> json) {
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

  static List<DeleteFileResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeleteFileResponse>() : json.map((value) => new DeleteFileResponse.fromJson(value)).toList();
  }

  static Map<String, DeleteFileResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeleteFileResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeleteFileResponse.fromJson(value));
    }
    return map;
  }
}
