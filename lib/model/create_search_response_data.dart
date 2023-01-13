part of openai.api;

class CreateSearchResponseData {
  
  String object = null;

  int document = null;

  double score = null;

  CreateSearchResponseData();

  @override
  String toString() {
    return 'CreateSearchResponseData[object=$object, document=$document, score=$score, ]';
  }

  CreateSearchResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    document = json['document'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'document': document,
      'score': score
     };
  }

  static List<CreateSearchResponseData> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateSearchResponseData>() : json.map((value) => new CreateSearchResponseData.fromJson(value)).toList();
  }

  static Map<String, CreateSearchResponseData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateSearchResponseData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateSearchResponseData.fromJson(value));
    }
    return map;
  }
}
