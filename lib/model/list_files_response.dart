part of openai.api;

class ListFilesResponse {
  
  String object = null;

  List<OpenAIFile> data = [];

  ListFilesResponse();

  @override
  String toString() {
    return 'ListFilesResponse[object=$object, data=$data, ]';
  }

  ListFilesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    data = OpenAIFile.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data
     };
  }

  static List<ListFilesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListFilesResponse>() : json.map((value) => new ListFilesResponse.fromJson(value)).toList();
  }

  static Map<String, ListFilesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListFilesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListFilesResponse.fromJson(value));
    }
    return map;
  }
}
