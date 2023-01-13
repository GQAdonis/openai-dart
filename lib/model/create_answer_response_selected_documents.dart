part of openai.api;

class CreateAnswerResponseSelectedDocuments {
  
  int document = null;

  String text = null;

  CreateAnswerResponseSelectedDocuments();

  @override
  String toString() {
    return 'CreateAnswerResponseSelectedDocuments[document=$document, text=$text, ]';
  }

  CreateAnswerResponseSelectedDocuments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    document = json['document'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'document': document,
      'text': text
     };
  }

  static List<CreateAnswerResponseSelectedDocuments> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateAnswerResponseSelectedDocuments>() : json.map((value) => new CreateAnswerResponseSelectedDocuments.fromJson(value)).toList();
  }

  static Map<String, CreateAnswerResponseSelectedDocuments> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateAnswerResponseSelectedDocuments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateAnswerResponseSelectedDocuments.fromJson(value));
    }
    return map;
  }
}
