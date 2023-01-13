part of openai.api;

class CreateEmbeddingRequest {
  /* ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them. */
  String model = null;
/* Input text to get embeddings for, encoded as a string or array of tokens. To get embeddings for multiple inputs in a single request, pass an array of strings or array of token arrays. Each input must not exceed 8192 tokens in length.  */
  OneOfCreateEmbeddingRequestInput input = null;
/* A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  */
  String user = null;

  CreateEmbeddingRequest();

  @override
  String toString() {
    return 'CreateEmbeddingRequest[model=$model, input=$input, user=$user, ]';
  }

  CreateEmbeddingRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    model = json['model'];
    input = new OneOfCreateEmbeddingRequestInput.fromJson(json['input']);
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'input': input,
      'user': user
     };
  }

  static List<CreateEmbeddingRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEmbeddingRequest>() : json.map((value) => new CreateEmbeddingRequest.fromJson(value)).toList();
  }

  static Map<String, CreateEmbeddingRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEmbeddingRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEmbeddingRequest.fromJson(value));
    }
    return map;
  }
}
