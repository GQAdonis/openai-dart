part of openai.api;

class CreateFileRequest {
  /* Name of the [JSON Lines](https://jsonlines.readthedocs.io/en/latest/) file to be uploaded.  If the `purpose` is set to \"fine-tune\", each line is a JSON record with \"prompt\" and \"completion\" fields representing your [training examples](/docs/guides/fine-tuning/prepare-training-data).  */
  String file = null;
/* The intended purpose of the uploaded documents.  Use \"fine-tune\" for [Fine-tuning](/docs/api-reference/fine-tunes). This allows us to validate the format of the uploaded file.  */
  String purpose = null;

  CreateFileRequest();

  @override
  String toString() {
    return 'CreateFileRequest[file=$file, purpose=$purpose, ]';
  }

  CreateFileRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
    purpose = json['purpose'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file,
      'purpose': purpose
     };
  }

  static List<CreateFileRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFileRequest>() : json.map((value) => new CreateFileRequest.fromJson(value)).toList();
  }

  static Map<String, CreateFileRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFileRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFileRequest.fromJson(value));
    }
    return map;
  }
}
