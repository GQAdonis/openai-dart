part of openai.api;

class CreateClassificationResponseSelectedExamples {
  
  int document = null;

  String text = null;

  String label = null;

  CreateClassificationResponseSelectedExamples();

  @override
  String toString() {
    return 'CreateClassificationResponseSelectedExamples[document=$document, text=$text, label=$label, ]';
  }

  CreateClassificationResponseSelectedExamples.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    document = json['document'];
    text = json['text'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'document': document,
      'text': text,
      'label': label
     };
  }

  static List<CreateClassificationResponseSelectedExamples> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateClassificationResponseSelectedExamples>() : json.map((value) => new CreateClassificationResponseSelectedExamples.fromJson(value)).toList();
  }

  static Map<String, CreateClassificationResponseSelectedExamples> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateClassificationResponseSelectedExamples>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateClassificationResponseSelectedExamples.fromJson(value));
    }
    return map;
  }
}
