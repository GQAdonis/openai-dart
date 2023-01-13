part of openai.api;

class CreateModerationResponseResults {
  
  bool flagged = null;

  CreateModerationResponseCategories categories = null;

  CreateModerationResponseCategoryScores categoryScores = null;

  CreateModerationResponseResults();

  @override
  String toString() {
    return 'CreateModerationResponseResults[flagged=$flagged, categories=$categories, categoryScores=$categoryScores, ]';
  }

  CreateModerationResponseResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    flagged = json['flagged'];
    categories = new CreateModerationResponseCategories.fromJson(json['categories']);
    categoryScores = new CreateModerationResponseCategoryScores.fromJson(json['category_scores']);
  }

  Map<String, dynamic> toJson() {
    return {
      'flagged': flagged,
      'categories': categories,
      'category_scores': categoryScores
     };
  }

  static List<CreateModerationResponseResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateModerationResponseResults>() : json.map((value) => new CreateModerationResponseResults.fromJson(value)).toList();
  }

  static Map<String, CreateModerationResponseResults> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateModerationResponseResults>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateModerationResponseResults.fromJson(value));
    }
    return map;
  }
}
