part of openai.api;

class CreateImageRequest {
  /* A text description of the desired image(s). The maximum length is 1000 characters. */
  String prompt = null;
/* The number of images to generate. Must be between 1 and 10. */
  int n = 1;
   // range from 1 to 10//
/* The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`. */
  String size = null;
  //enum sizeEnum {  256x256,  512x512,  1024x1024,  };
/* The format in which the generated images are returned. Must be one of `url` or `b64_json`. */
  String responseFormat = null;
  //enum responseFormatEnum {  url,  b64_json,  };
/* A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  */
  String user = null;

  CreateImageRequest();

  @override
  String toString() {
    return 'CreateImageRequest[prompt=$prompt, n=$n, size=$size, responseFormat=$responseFormat, user=$user, ]';
  }

  CreateImageRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    prompt = json['prompt'];
    n = json['n'];
    size = json['size'];
    responseFormat = json['response_format'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'prompt': prompt,
      'n': n,
      'size': size,
      'response_format': responseFormat,
      'user': user
     };
  }

  static List<CreateImageRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateImageRequest>() : json.map((value) => new CreateImageRequest.fromJson(value)).toList();
  }

  static Map<String, CreateImageRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateImageRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateImageRequest.fromJson(value));
    }
    return map;
  }
}
