part of openai.api;

class ListEnginesResponse {
  
  String object = null;

  List<Engine> data = [];

  ListEnginesResponse();

  @override
  String toString() {
    return 'ListEnginesResponse[object=$object, data=$data, ]';
  }

  ListEnginesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    data = Engine.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data
     };
  }

  static List<ListEnginesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListEnginesResponse>() : json.map((value) => new ListEnginesResponse.fromJson(value)).toList();
  }

  static Map<String, ListEnginesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListEnginesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListEnginesResponse.fromJson(value));
    }
    return map;
  }
}
