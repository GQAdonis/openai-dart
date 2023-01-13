part of openai.api;

class CreateSearchRequest {
  /* Query to search against the documents. */
  String query = null;
/* Up to 200 documents to search over, provided as a list of strings.  The maximum document length (in tokens) is 2034 minus the number of tokens in the query.  You should specify either `documents` or a `file`, but not both.  */
  List<String> documents = [];
/* The ID of an uploaded file that contains documents to search over.  You should specify either `documents` or a `file`, but not both.  */
  String file = null;
/* The maximum number of documents to be re-ranked and returned by search.  This flag only takes effect when `file` is set.  */
  int maxRerank = 200;
   // range from 1 to //
/* A special boolean flag for showing metadata. If set to `true`, each document entry in the returned JSON will contain a \"metadata\" field.  This flag only takes effect when `file` is set.  */
  bool returnMetadata = false;
/* A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  */
  String user = null;

  CreateSearchRequest();

  @override
  String toString() {
    return 'CreateSearchRequest[query=$query, documents=$documents, file=$file, maxRerank=$maxRerank, returnMetadata=$returnMetadata, user=$user, ]';
  }

  CreateSearchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    query = json['query'];
    documents = (json['documents'] as List).map((item) => item as String).toList();
    file = json['file'];
    maxRerank = json['max_rerank'];
    returnMetadata = json['return_metadata'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'documents': documents,
      'file': file,
      'max_rerank': maxRerank,
      'return_metadata': returnMetadata,
      'user': user
     };
  }

  static List<CreateSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateSearchRequest>() : json.map((value) => new CreateSearchRequest.fromJson(value)).toList();
  }

  static Map<String, CreateSearchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateSearchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateSearchRequest.fromJson(value));
    }
    return map;
  }
}
