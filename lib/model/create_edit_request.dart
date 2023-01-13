part of openai.api;

class CreateEditRequest {
  /* ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them. */
  String model = null;
/* The input text to use as a starting point for the edit. */
  String input = "";
/* The instruction that tells the model how to edit the prompt. */
  String instruction = null;
/* How many edits to generate for the input and instruction. */
  int n = 1;
   // range from 1 to 20//
/* What [sampling temperature](https://towardsdatascience.com/how-to-sample-from-language-models-682bceb97277) to use. Higher values means the model will take more risks. Try 0.9 for more creative applications, and 0 (argmax sampling) for ones with a well-defined answer.  We generally recommend altering this or `top_p` but not both.  */
  double temperature = 1;
/* An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or `temperature` but not both.  */
  double topP = 1;

  CreateEditRequest();

  @override
  String toString() {
    return 'CreateEditRequest[model=$model, input=$input, instruction=$instruction, n=$n, temperature=$temperature, topP=$topP, ]';
  }

  CreateEditRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    model = json['model'];
    input = json['input'];
    instruction = json['instruction'];
    n = json['n'];
    temperature = json['temperature'];
    topP = json['top_p'];
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'input': input,
      'instruction': instruction,
      'n': n,
      'temperature': temperature,
      'top_p': topP
     };
  }

  static List<CreateEditRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEditRequest>() : json.map((value) => new CreateEditRequest.fromJson(value)).toList();
  }

  static Map<String, CreateEditRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEditRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEditRequest.fromJson(value));
    }
    return map;
  }
}
