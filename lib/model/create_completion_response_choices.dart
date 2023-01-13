part of openai.api;

class CreateCompletionResponseChoices {
  
  String text = null;

  int index = null;

  CreateCompletionResponseLogprobs logprobs = null;

  String finishReason = null;

  CreateCompletionResponseChoices();

  @override
  String toString() {
    return 'CreateCompletionResponseChoices[text=$text, index=$index, logprobs=$logprobs, finishReason=$finishReason, ]';
  }

  CreateCompletionResponseChoices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    index = json['index'];
    logprobs = new CreateCompletionResponseLogprobs.fromJson(json['logprobs']);
    finishReason = json['finish_reason'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'index': index,
      'logprobs': logprobs,
      'finish_reason': finishReason
     };
  }

  static List<CreateCompletionResponseChoices> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateCompletionResponseChoices>() : json.map((value) => new CreateCompletionResponseChoices.fromJson(value)).toList();
  }

  static Map<String, CreateCompletionResponseChoices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateCompletionResponseChoices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateCompletionResponseChoices.fromJson(value));
    }
    return map;
  }
}
