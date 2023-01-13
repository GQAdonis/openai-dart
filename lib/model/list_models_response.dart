part of openai.api;

class ListModelsResponse {
  
  String object = null;

  List<Model> data = [];

  ListModelsResponse();

  @override
  String toString() {
    return 'ListModelsResponse[object=$object, data=$data, ]';
  }

  ListModelsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = json['object'];
    data = Model.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data
     };
  }

  static List<ListModelsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListModelsResponse>() : json.map((value) => new ListModelsResponse.fromJson(value)).toList();
  }

  static Map<String, ListModelsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListModelsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListModelsResponse.fromJson(value));
    }
    return map;
  }
}
