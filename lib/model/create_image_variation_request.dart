part of openai.api;

class CreateImageVariationRequest {
  /* The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square. */
  String image = null;
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

  CreateImageVariationRequest();

  @override
  String toString() {
    return 'CreateImageVariationRequest[image=$image, n=$n, size=$size, responseFormat=$responseFormat, user=$user, ]';
  }

  CreateImageVariationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    image = json['image'];
    n = json['n'];
    size = json['size'];
    responseFormat = json['response_format'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'n': n,
      'size': size,
      'response_format': responseFormat,
      'user': user
     };
  }

  static List<CreateImageVariationRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateImageVariationRequest>() : json.map((value) => new CreateImageVariationRequest.fromJson(value)).toList();
  }

  static Map<String, CreateImageVariationRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateImageVariationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateImageVariationRequest.fromJson(value));
    }
    return map;
  }
}
