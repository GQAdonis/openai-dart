part of openai.api;



class OpenAIApi {
  final ApiClient apiClient;

  OpenAIApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Immediately cancel a fine-tune job. 
  ///
  /// 
  Future<FineTune> cancelFineTune(String fineTuneId) async {
    Object postBody = null;

    // verify required params are set
    if(fineTuneId == null) {
     throw new ApiException(400, "Missing required param: fineTuneId");
    }

    // create path and map variables
    String path = "/fine-tunes/{fine_tune_id}/cancel".replaceAll("{format}","json").replaceAll("{" + "fine_tune_id" + "}", fineTuneId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FineTune') as FineTune ;
    } else {
      return null;
    }
  }
  /// Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 
  ///
  /// 
  @deprecated
  Future<CreateAnswerResponse> createAnswer(CreateAnswerRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/answers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateAnswerResponse') as CreateAnswerResponse ;
    } else {
      return null;
    }
  }
  /// Classifies the specified &#x60;query&#x60; using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded &#x60;file&#x60;, or explicitly listed in the request using the &#x60;examples&#x60; parameter for quick tests and small scale use cases. 
  ///
  /// 
  @deprecated
  Future<CreateClassificationResponse> createClassification(CreateClassificationRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/classifications".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateClassificationResponse') as CreateClassificationResponse ;
    } else {
      return null;
    }
  }
  /// Creates a completion for the provided prompt and parameters
  ///
  /// 
  Future<CreateCompletionResponse> createCompletion(CreateCompletionRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/completions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateCompletionResponse') as CreateCompletionResponse ;
    } else {
      return null;
    }
  }
  /// Creates a new edit for the provided input, instruction, and parameters
  ///
  /// 
  Future<CreateEditResponse> createEdit(CreateEditRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edits".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateEditResponse') as CreateEditResponse ;
    } else {
      return null;
    }
  }
  /// Creates an embedding vector representing the input text.
  ///
  /// 
  Future<CreateEmbeddingResponse> createEmbedding(CreateEmbeddingRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/embeddings".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateEmbeddingResponse') as CreateEmbeddingResponse ;
    } else {
      return null;
    }
  }
  /// Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 
  ///
  /// 
  Future<OpenAIFile> createFile(String file, String purpose) async {
    Object postBody = null;

    // verify required params are set
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }
    if(purpose == null) {
     throw new ApiException(400, "Missing required param: purpose");
    }

    // create path and map variables
    String path = "/files".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
      if (purpose != null) {
        hasFields = true;
        mp.fields['purpose'] = parameterToString(purpose);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      
if (purpose != null)
        formParams['purpose'] = parameterToString(purpose);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OpenAIFile') as OpenAIFile ;
    } else {
      return null;
    }
  }
  /// Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// 
  Future<FineTune> createFineTune(CreateFineTuneRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/fine-tunes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FineTune') as FineTune ;
    } else {
      return null;
    }
  }
  /// Creates an image given a prompt.
  ///
  /// 
  Future<ImagesResponse> createImage(CreateImageRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/images/generations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ImagesResponse') as ImagesResponse ;
    } else {
      return null;
    }
  }
  /// Creates an edited or extended image given an original image and a prompt.
  ///
  /// 
  Future<ImagesResponse> createImageEdit(String image, String mask, String prompt, int n, String size, String responseFormat, String user) async {
    Object postBody = null;

    // verify required params are set
    if(image == null) {
     throw new ApiException(400, "Missing required param: image");
    }
    if(mask == null) {
     throw new ApiException(400, "Missing required param: mask");
    }
    if(prompt == null) {
     throw new ApiException(400, "Missing required param: prompt");
    }
    if(n == null) {
     throw new ApiException(400, "Missing required param: n");
    }
    if(size == null) {
     throw new ApiException(400, "Missing required param: size");
    }
    if(responseFormat == null) {
     throw new ApiException(400, "Missing required param: responseFormat");
    }
    if(user == null) {
     throw new ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/images/edits".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (image != null) {
        hasFields = true;
        mp.fields['image'] = image.field;
        mp.files.add(image);
      }
      if (mask != null) {
        hasFields = true;
        mp.fields['mask'] = mask.field;
        mp.files.add(mask);
      }
      if (prompt != null) {
        hasFields = true;
        mp.fields['prompt'] = parameterToString(prompt);
      }
      if (n != null) {
        hasFields = true;
        mp.fields['n'] = parameterToString(n);
      }
      if (size != null) {
        hasFields = true;
        mp.fields['size'] = parameterToString(size);
      }
      if (responseFormat != null) {
        hasFields = true;
        mp.fields['response_format'] = parameterToString(responseFormat);
      }
      if (user != null) {
        hasFields = true;
        mp.fields['user'] = parameterToString(user);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      

if (prompt != null)
        formParams['prompt'] = parameterToString(prompt);
if (n != null)
        formParams['n'] = parameterToString(n);
if (size != null)
        formParams['size'] = parameterToString(size);
if (responseFormat != null)
        formParams['response_format'] = parameterToString(responseFormat);
if (user != null)
        formParams['user'] = parameterToString(user);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ImagesResponse') as ImagesResponse ;
    } else {
      return null;
    }
  }
  /// Creates a variation of a given image.
  ///
  /// 
  Future<ImagesResponse> createImageVariation(String image, int n, String size, String responseFormat, String user) async {
    Object postBody = null;

    // verify required params are set
    if(image == null) {
     throw new ApiException(400, "Missing required param: image");
    }
    if(n == null) {
     throw new ApiException(400, "Missing required param: n");
    }
    if(size == null) {
     throw new ApiException(400, "Missing required param: size");
    }
    if(responseFormat == null) {
     throw new ApiException(400, "Missing required param: responseFormat");
    }
    if(user == null) {
     throw new ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/images/variations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (image != null) {
        hasFields = true;
        mp.fields['image'] = image.field;
        mp.files.add(image);
      }
      if (n != null) {
        hasFields = true;
        mp.fields['n'] = parameterToString(n);
      }
      if (size != null) {
        hasFields = true;
        mp.fields['size'] = parameterToString(size);
      }
      if (responseFormat != null) {
        hasFields = true;
        mp.fields['response_format'] = parameterToString(responseFormat);
      }
      if (user != null) {
        hasFields = true;
        mp.fields['user'] = parameterToString(user);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      
if (n != null)
        formParams['n'] = parameterToString(n);
if (size != null)
        formParams['size'] = parameterToString(size);
if (responseFormat != null)
        formParams['response_format'] = parameterToString(responseFormat);
if (user != null)
        formParams['user'] = parameterToString(user);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ImagesResponse') as ImagesResponse ;
    } else {
      return null;
    }
  }
  /// Classifies if text violates OpenAI&#x27;s Content Policy
  ///
  /// 
  Future<CreateModerationResponse> createModeration(CreateModerationRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/moderations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateModerationResponse') as CreateModerationResponse ;
    } else {
      return null;
    }
  }
  /// The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When &#x60;file&#x60; is set, the search endpoint searches over all the documents in the given file and returns up to the &#x60;max_rerank&#x60; number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 
  ///
  /// 
  @deprecated
  Future<CreateSearchResponse> createSearch(CreateSearchRequest body, String engineId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(engineId == null) {
     throw new ApiException(400, "Missing required param: engineId");
    }

    // create path and map variables
    String path = "/engines/{engine_id}/search".replaceAll("{format}","json").replaceAll("{" + "engine_id" + "}", engineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'CreateSearchResponse') as CreateSearchResponse ;
    } else {
      return null;
    }
  }
  /// Delete a file.
  ///
  /// 
  Future<DeleteFileResponse> deleteFile(String fileId) async {
    Object postBody = null;

    // verify required params are set
    if(fileId == null) {
     throw new ApiException(400, "Missing required param: fileId");
    }

    // create path and map variables
    String path = "/files/{file_id}".replaceAll("{format}","json").replaceAll("{" + "file_id" + "}", fileId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'DeleteFileResponse') as DeleteFileResponse ;
    } else {
      return null;
    }
  }
  /// Delete a fine-tuned model. You must have the Owner role in your organization.
  ///
  /// 
  Future<DeleteModelResponse> deleteModel(String model) async {
    Object postBody = null;

    // verify required params are set
    if(model == null) {
     throw new ApiException(400, "Missing required param: model");
    }

    // create path and map variables
    String path = "/models/{model}".replaceAll("{format}","json").replaceAll("{" + "model" + "}", model.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'DeleteModelResponse') as DeleteModelResponse ;
    } else {
      return null;
    }
  }
  /// Returns the contents of the specified file
  ///
  /// 
  Future<String> downloadFile(String fileId) async {
    Object postBody = null;

    // verify required params are set
    if(fileId == null) {
     throw new ApiException(400, "Missing required param: fileId");
    }

    // create path and map variables
    String path = "/files/{file_id}/content".replaceAll("{format}","json").replaceAll("{" + "file_id" + "}", fileId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.
  ///
  /// 
  @deprecated
  Future<ListEnginesResponse> listEngines() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/engines".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListEnginesResponse') as ListEnginesResponse ;
    } else {
      return null;
    }
  }
  /// Returns a list of files that belong to the user&#x27;s organization.
  ///
  /// 
  Future<ListFilesResponse> listFiles() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/files".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListFilesResponse') as ListFilesResponse ;
    } else {
      return null;
    }
  }
  /// Get fine-grained status updates for a fine-tune job. 
  ///
  /// 
  Future<ListFineTuneEventsResponse> listFineTuneEvents(String fineTuneId, { bool stream }) async {
    Object postBody = null;

    // verify required params are set
    if(fineTuneId == null) {
     throw new ApiException(400, "Missing required param: fineTuneId");
    }

    // create path and map variables
    String path = "/fine-tunes/{fine_tune_id}/events".replaceAll("{format}","json").replaceAll("{" + "fine_tune_id" + "}", fineTuneId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(stream != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "stream", stream));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListFineTuneEventsResponse') as ListFineTuneEventsResponse ;
    } else {
      return null;
    }
  }
  /// List your organization&#x27;s fine-tuning jobs 
  ///
  /// 
  Future<ListFineTunesResponse> listFineTunes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/fine-tunes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListFineTunesResponse') as ListFineTunesResponse ;
    } else {
      return null;
    }
  }
  /// Lists the currently available models, and provides basic information about each one such as the owner and availability.
  ///
  /// 
  Future<ListModelsResponse> listModels() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/models".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ListModelsResponse') as ListModelsResponse ;
    } else {
      return null;
    }
  }
  /// Retrieves a model instance, providing basic information about it such as the owner and availability.
  ///
  /// 
  @deprecated
  Future<Engine> retrieveEngine(String engineId) async {
    Object postBody = null;

    // verify required params are set
    if(engineId == null) {
     throw new ApiException(400, "Missing required param: engineId");
    }

    // create path and map variables
    String path = "/engines/{engine_id}".replaceAll("{format}","json").replaceAll("{" + "engine_id" + "}", engineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Engine') as Engine ;
    } else {
      return null;
    }
  }
  /// Returns information about a specific file.
  ///
  /// 
  Future<OpenAIFile> retrieveFile(String fileId) async {
    Object postBody = null;

    // verify required params are set
    if(fileId == null) {
     throw new ApiException(400, "Missing required param: fileId");
    }

    // create path and map variables
    String path = "/files/{file_id}".replaceAll("{format}","json").replaceAll("{" + "file_id" + "}", fileId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OpenAIFile') as OpenAIFile ;
    } else {
      return null;
    }
  }
  /// Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// 
  Future<FineTune> retrieveFineTune(String fineTuneId) async {
    Object postBody = null;

    // verify required params are set
    if(fineTuneId == null) {
     throw new ApiException(400, "Missing required param: fineTuneId");
    }

    // create path and map variables
    String path = "/fine-tunes/{fine_tune_id}".replaceAll("{format}","json").replaceAll("{" + "fine_tune_id" + "}", fineTuneId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FineTune') as FineTune ;
    } else {
      return null;
    }
  }
  /// Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
  ///
  /// 
  Future<Model> retrieveModel(String model) async {
    Object postBody = null;

    // verify required params are set
    if(model == null) {
     throw new ApiException(400, "Missing required param: model");
    }

    // create path and map variables
    String path = "/models/{model}".replaceAll("{format}","json").replaceAll("{" + "model" + "}", model.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Model') as Model ;
    } else {
      return null;
    }
  }
}
