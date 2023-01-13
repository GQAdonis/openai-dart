part of openai.api;

class ImagesResponseData {
  
  String url = null;

  String b64Json = null;

  ImagesResponseData();

  @override
  String toString() {
    return 'ImagesResponseData[url=$url, b64Json=$b64Json, ]';
  }

  ImagesResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    b64Json = json['b64_json'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'b64_json': b64Json
     };
  }

  static List<ImagesResponseData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImagesResponseData>() : json.map((value) => new ImagesResponseData.fromJson(value)).toList();
  }

  static Map<String, ImagesResponseData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImagesResponseData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImagesResponseData.fromJson(value));
    }
    return map;
  }
}
