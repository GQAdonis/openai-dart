part of openai.api;

class OpenAIFile {
  
  String id = null;

  String object = null;

  int bytes = null;

  int createdAt = null;

  String filename = null;

  String purpose = null;

  String status = null;

  Object statusDetails = null;

  OpenAIFile();

  @override
  String toString() {
    return 'OpenAIFile[id=$id, object=$object, bytes=$bytes, createdAt=$createdAt, filename=$filename, purpose=$purpose, status=$status, statusDetails=$statusDetails, ]';
  }

  OpenAIFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    object = json['object'];
    bytes = json['bytes'];
    createdAt = json['created_at'];
    filename = json['filename'];
    purpose = json['purpose'];
    status = json['status'];
    statusDetails = new Object.fromJson(json['status_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'bytes': bytes,
      'created_at': createdAt,
      'filename': filename,
      'purpose': purpose,
      'status': status,
      'status_details': statusDetails
     };
  }

  static List<OpenAIFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<OpenAIFile>() : json.map((value) => new OpenAIFile.fromJson(value)).toList();
  }

  static Map<String, OpenAIFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OpenAIFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OpenAIFile.fromJson(value));
    }
    return map;
  }
}
