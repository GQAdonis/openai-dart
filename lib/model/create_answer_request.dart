part of openai.api;

class CreateAnswerRequest {
  /* ID of the model to use for completion. You can select one of `ada`, `babbage`, `curie`, or `davinci`. */
  String model = null;
/* Question to get answered. */
  String question = null;
/* List of (question, answer) pairs that will help steer the model towards the tone and answer format you'd like. We recommend adding 2 to 3 examples. */
  List<List<String>> examples = [];
/* A text snippet containing the contextual information used to generate the answers for the `examples` you provide. */
  String examplesContext = null;
/* List of documents from which the answer for the input `question` should be derived. If this is an empty list, the question will be answered based on the question-answer examples.  You should specify either `documents` or a `file`, but not both.  */
  List<String> documents = [];
/* The ID of an uploaded file that contains documents to search over. See [upload file](/docs/api-reference/files/upload) for how to upload a file of the desired format and purpose.  You should specify either `documents` or a `file`, but not both.  */
  String file = null;
/* ID of the model to use for [Search](/docs/api-reference/searches/create). You can select one of `ada`, `babbage`, `curie`, or `davinci`. */
  String searchModel = "ada";
/* The maximum number of documents to be ranked by [Search](/docs/api-reference/searches/create) when using `file`. Setting it to a higher value leads to improved accuracy but with increased latency and cost. */
  int maxRerank = 200;
/* What [sampling temperature](https://towardsdatascience.com/how-to-sample-from-language-models-682bceb97277) to use. Higher values mean the model will take more risks and value 0 (argmax sampling) works better for scenarios with a well-defined answer. */
  double temperature = 0;
/* Include the log probabilities on the `logprobs` most likely tokens, as well the chosen tokens. For example, if `logprobs` is 5, the API will return a list of the 5 most likely tokens. The API will always return the `logprob` of the sampled token, so there may be up to `logprobs+1` elements in the response.  The maximum value for `logprobs` is 5. If you need more than this, please contact us through our [Help center](https://help.openai.com) and describe your use case.  When `logprobs` is set, `completion` will be automatically added into `expand` to get the logprobs.  */
  int logprobs = null;
  //enum logprobsEnum {  };
/* The maximum number of tokens allowed for the generated answer */
  int maxTokens = 16;
/* Up to 4 sequences where the API will stop generating further tokens. The returned text will not contain the stop sequence.  */
  OneOfCreateAnswerRequestStop stop = null;
/* How many answers to generate for each question. */
  int n = 1;
   // range from 1 to 10//
/* Modify the likelihood of specified tokens appearing in the completion.  Accepts a json object that maps tokens (specified by their token ID in the GPT tokenizer) to an associated bias value from -100 to 100. You can use this [tokenizer tool](/tokenizer?view=bpe) (which works for both GPT-2 and GPT-3) to convert text to token IDs. Mathematically, the bias is added to the logits generated by the model prior to sampling. The exact effect will vary per model, but values between -1 and 1 should decrease or increase likelihood of selection; values like -100 or 100 should result in a ban or exclusive selection of the relevant token.  As an example, you can pass `{\"50256\": -100}` to prevent the <|endoftext|> token from being generated.  */
  Object logitBias = null;
/* A special boolean flag for showing metadata. If set to `true`, each document entry in the returned JSON will contain a \"metadata\" field.  This flag only takes effect when `file` is set.  */
  bool returnMetadata = false;
/* If set to `true`, the returned JSON will include a \"prompt\" field containing the final prompt that was used to request a completion. This is mainly useful for debugging purposes. */
  bool returnPrompt = false;
/* If an object name is in the list, we provide the full information of the object; otherwise, we only provide the object ID. Currently we support `completion` and `file` objects for expansion. */
  List<Object> expand = [];
/* A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  */
  String user = null;

  CreateAnswerRequest();

  @override
  String toString() {
    return 'CreateAnswerRequest[model=$model, question=$question, examples=$examples, examplesContext=$examplesContext, documents=$documents, file=$file, searchModel=$searchModel, maxRerank=$maxRerank, temperature=$temperature, logprobs=$logprobs, maxTokens=$maxTokens, stop=$stop, n=$n, logitBias=$logitBias, returnMetadata=$returnMetadata, returnPrompt=$returnPrompt, expand=$expand, user=$user, ]';
  }

  CreateAnswerRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    model = json['model'];
    question = json['question'];
    examples = List.listFromJson(json['examples']);
    examplesContext = json['examples_context'];
    documents = (json['documents'] as List).map((item) => item as String).toList();
    file = json['file'];
    searchModel = json['search_model'];
    maxRerank = json['max_rerank'];
    temperature = json['temperature'];
    logprobs = json['logprobs'];
    maxTokens = json['max_tokens'];
    stop = new OneOfCreateAnswerRequestStop.fromJson(json['stop']);
    n = json['n'];
    logitBias = new Object.fromJson(json['logit_bias']);
    returnMetadata = json['return_metadata'];
    returnPrompt = json['return_prompt'];
    expand = Object.listFromJson(json['expand']);
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'question': question,
      'examples': examples,
      'examples_context': examplesContext,
      'documents': documents,
      'file': file,
      'search_model': searchModel,
      'max_rerank': maxRerank,
      'temperature': temperature,
      'logprobs': logprobs,
      'max_tokens': maxTokens,
      'stop': stop,
      'n': n,
      'logit_bias': logitBias,
      'return_metadata': returnMetadata,
      'return_prompt': returnPrompt,
      'expand': expand,
      'user': user
     };
  }

  static List<CreateAnswerRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateAnswerRequest>() : json.map((value) => new CreateAnswerRequest.fromJson(value)).toList();
  }

  static Map<String, CreateAnswerRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateAnswerRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateAnswerRequest.fromJson(value));
    }
    return map;
  }
}
