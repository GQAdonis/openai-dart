part of openai.api;

class ListFineTunesResponse {
  
  String object = null;

  List<FineTune> data = [];

  ListFineTunesResponse();

  @override
  String toString() {
    return 'ListFineTunesResponse[object=$object, data=$data, ]';
  }

  ListFineTunesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    data = FineTune.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data
     };
  }

  static List<ListFineTunesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListFineTunesResponse>() : json.map((value) => new ListFineTunesResponse.fromJson(value)).toList();
  }

  static Map<String, ListFineTunesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListFineTunesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListFineTunesResponse.fromJson(value));
    }
    return map;
  }
}
