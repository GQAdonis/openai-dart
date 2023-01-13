part of openai.api;

class CreateImageEditRequest {
  /* The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask. */
  String image = null;
/* An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where `image` should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as `image`. */
  String mask = null;
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

  CreateImageEditRequest();

  @override
  String toString() {
    return 'CreateImageEditRequest[image=$image, mask=$mask, prompt=$prompt, n=$n, size=$size, responseFormat=$responseFormat, user=$user, ]';
  }

  CreateImageEditRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    image = json['image'];
    mask = json['mask'];
    prompt = json['prompt'];
    n = json['n'];
    size = json['size'];
    responseFormat = json['response_format'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'mask': mask,
      'prompt': prompt,
      'n': n,
      'size': size,
      'response_format': responseFormat,
      'user': user
     };
  }

  static List<CreateImageEditRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateImageEditRequest>() : json.map((value) => new CreateImageEditRequest.fromJson(value)).toList();
  }

  static Map<String, CreateImageEditRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateImageEditRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateImageEditRequest.fromJson(value));
    }
    return map;
  }
}
