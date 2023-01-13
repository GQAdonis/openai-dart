part of openai.api;

class CreateModerationRequest {
  /* The input text to classify */
  OneOfCreateModerationRequestInput input = null;
/* Two content moderations models are available: `text-moderation-stable` and `text-moderation-latest`.  The default is `text-moderation-latest` which will be automatically upgraded over time. This ensures you are always using our most accurate model. If you use `text-moderation-stable`, we will provide advanced notice before updating the model. Accuracy of `text-moderation-stable` may be slightly lower than for `text-moderation-latest`.  */
  String model = "text-moderation-latest";

  CreateModerationRequest();

  @override
  String toString() {
    return 'CreateModerationRequest[input=$input, model=$model, ]';
  }

  CreateModerationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    input = new OneOfCreateModerationRequestInput.fromJson(json['input']);
    model = json['model'];
  }

  Map<String, dynamic> toJson() {
    return {
      'input': input,
      'model': model
     };
  }

  static List<CreateModerationRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateModerationRequest>() : json.map((value) => new CreateModerationRequest.fromJson(value)).toList();
  }

  static Map<String, CreateModerationRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateModerationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateModerationRequest.fromJson(value));
    }
    return map;
  }
}
