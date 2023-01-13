part of openai.api;

class CreateModerationResponseCategoryScores {
  
  double hate = null;

  double hateThreatening = null;

  double selfHarm = null;

  double sexual = null;

  double sexualMinors = null;

  double violence = null;

  double violenceGraphic = null;

  CreateModerationResponseCategoryScores();

  @override
  String toString() {
    return 'CreateModerationResponseCategoryScores[hate=$hate, hateThreatening=$hateThreatening, selfHarm=$selfHarm, sexual=$sexual, sexualMinors=$sexualMinors, violence=$violence, violenceGraphic=$violenceGraphic, ]';
  }

  CreateModerationResponseCategoryScores.fromJson(Map<String, dynamic> json) {
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

  static List<CreateModerationResponseCategoryScores> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateModerationResponseCategoryScores>() : json.map((value) => new CreateModerationResponseCategoryScores.fromJson(value)).toList();
  }

  static Map<String, CreateModerationResponseCategoryScores> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateModerationResponseCategoryScores>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateModerationResponseCategoryScores.fromJson(value));
    }
    return map;
  }
}
