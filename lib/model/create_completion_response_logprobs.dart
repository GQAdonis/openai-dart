part of openai.api;

class CreateCompletionResponseLogprobs {
  
  List<String> tokens = [];

  List<double> tokenLogprobs = [];

  List<Object> topLogprobs = [];

  List<int> textOffset = [];

  CreateCompletionResponseLogprobs();

  @override
  String toString() {
    return 'CreateCompletionResponseLogprobs[tokens=$tokens, tokenLogprobs=$tokenLogprobs, topLogprobs=$topLogprobs, textOffset=$textOffset, ]';
  }

  CreateCompletionResponseLogprobs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tokens = (json['tokens'] as List).map((item) => item as String).toList();
    tokenLogprobs = (json['token_logprobs'] as List).map((item) => item as double).toList();
    topLogprobs = Object.listFromJson(json['top_logprobs']);
    textOffset = (json['text_offset'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'tokens': tokens,
      'token_logprobs': tokenLogprobs,
      'top_logprobs': topLogprobs,
      'text_offset': textOffset
     };
  }

  static List<CreateCompletionResponseLogprobs> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateCompletionResponseLogprobs>() : json.map((value) => new CreateCompletionResponseLogprobs.fromJson(value)).toList();
  }

  static Map<String, CreateCompletionResponseLogprobs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateCompletionResponseLogprobs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateCompletionResponseLogprobs.fromJson(value));
    }
    return map;
  }
}
