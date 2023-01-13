part of openai.api;

class ImagesResponse {
  
  int created = null;

  List<ImagesResponseData> data = [];

  ImagesResponse();

  @override
  String toString() {
    return 'ImagesResponse[created=$created, data=$data, ]';
  }

  ImagesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'];
    data = ImagesResponseData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created,
      'data': data
     };
  }

  static List<ImagesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImagesResponse>() : json.map((value) => new ImagesResponse.fromJson(value)).toList();
  }

  static Map<String, ImagesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImagesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImagesResponse.fromJson(value));
    }
    return map;
  }
}
