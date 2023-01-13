part of openai.api;

class ListFineTuneEventsResponse {
  
  String object = null;

  List<FineTuneEvent> data = [];

  ListFineTuneEventsResponse();

  @override
  String toString() {
    return 'ListFineTuneEventsResponse[object=$object, data=$data, ]';
  }

  ListFineTuneEventsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    data = FineTuneEvent.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data
     };
  }

  static List<ListFineTuneEventsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListFineTuneEventsResponse>() : json.map((value) => new ListFineTuneEventsResponse.fromJson(value)).toList();
  }

  static Map<String, ListFineTuneEventsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListFineTuneEventsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListFineTuneEventsResponse.fromJson(value));
    }
    return map;
  }
}
