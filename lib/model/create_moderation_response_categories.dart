part of openai.api;

class CreateModerationResponseCategories {
  
  bool hate = null;

  bool hateThreatening = null;

  bool selfHarm = null;

  bool sexual = null;

  bool sexualMinors = null;

  bool violence = null;

  bool violenceGraphic = null;

  CreateModerationResponseCategories();

  @override
  String toString() {
    return 'CreateModerationResponseCategories[hate=$hate, hateThreatening=$hateThreatening, selfHarm=$selfHarm, sexual=$sexual, sexualMinors=$sexualMinors, violence=$violence, violenceGraphic=$violenceGraphic, ]';
  }

  CreateModerationResponseCategories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hate = json['hate'];
    hateThreatening = json['hate/threatening'];
    selfHarm = json['self-harm'];
    sexual = json['sexual'];
    sexualMinors = json['sexual/minors'];
    violence = json['violence'];
    violenceGraphic = json['violence/graphic'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hate': hate,
      'hate/threatening': hateThreatening,
      'self-harm': selfHarm,
      'sexual': sexual,
      'sexual/minors': sexualMinors,
      'violence': violence,
      'violence/graphic': violenceGraphic
     };
  }

  static List<CreateModerationResponseCategories> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateModerationResponseCategories>() : json.map((value) => new CreateModerationResponseCategories.fromJson(value)).toList();
  }

  static Map<String, CreateModerationResponseCategories> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateModerationResponseCategories>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateModerationResponseCategories.fromJson(value));
    }
    return map;
  }
}
