//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;


class OpenAIApi {
  OpenAIApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Immediately cancel a fine-tune job. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job to cancel 
  Future<Response> cancelFineTuneWithHttpInfo(String fineTuneId,) async {
    // ignore: prefer_const_declarations
    final path = r'/fine-tunes/{fine_tune_id}/cancel'
      .replaceAll('{fine_tune_id}', fineTuneId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Immediately cancel a fine-tune job. 
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job to cancel 
  Future<FineTune?> cancelFineTune(String fineTuneId,) async {
    final response = await cancelFineTuneWithHttpInfo(fineTuneId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FineTune',) as FineTune;
    
    }
    return null;
  }

  /// Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAnswerRequest] createAnswerRequest (required):
  Future<Response> createAnswerWithHttpInfo(CreateAnswerRequest createAnswerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/answers';

    // ignore: prefer_final_locals
    Object? postBody = createAnswerRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 
  ///
  /// Parameters:
  ///
  /// * [CreateAnswerRequest] createAnswerRequest (required):
  Future<CreateAnswerResponse?> createAnswer(CreateAnswerRequest createAnswerRequest,) async {
    final response = await createAnswerWithHttpInfo(createAnswerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAnswerResponse',) as CreateAnswerResponse;
    
    }
    return null;
  }

  /// Classifies the specified `query` using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded `file`, or explicitly listed in the request using the `examples` parameter for quick tests and small scale use cases. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateClassificationRequest] createClassificationRequest (required):
  Future<Response> createClassificationWithHttpInfo(CreateClassificationRequest createClassificationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/classifications';

    // ignore: prefer_final_locals
    Object? postBody = createClassificationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Classifies the specified `query` using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded `file`, or explicitly listed in the request using the `examples` parameter for quick tests and small scale use cases. 
  ///
  /// Parameters:
  ///
  /// * [CreateClassificationRequest] createClassificationRequest (required):
  Future<CreateClassificationResponse?> createClassification(CreateClassificationRequest createClassificationRequest,) async {
    final response = await createClassificationWithHttpInfo(createClassificationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateClassificationResponse',) as CreateClassificationResponse;
    
    }
    return null;
  }

  /// Creates a completion for the provided prompt and parameters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCompletionRequest] createCompletionRequest (required):
  Future<Response> createCompletionWithHttpInfo(CreateCompletionRequest createCompletionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/completions';

    // ignore: prefer_final_locals
    Object? postBody = createCompletionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a completion for the provided prompt and parameters
  ///
  /// Parameters:
  ///
  /// * [CreateCompletionRequest] createCompletionRequest (required):
  Future<CreateCompletionResponse?> createCompletion(CreateCompletionRequest createCompletionRequest,) async {
    final response = await createCompletionWithHttpInfo(createCompletionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateCompletionResponse',) as CreateCompletionResponse;
    
    }
    return null;
  }

  /// Creates a new edit for the provided input, instruction, and parameters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEditRequest] createEditRequest (required):
  Future<Response> createEditWithHttpInfo(CreateEditRequest createEditRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/edits';

    // ignore: prefer_final_locals
    Object? postBody = createEditRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new edit for the provided input, instruction, and parameters
  ///
  /// Parameters:
  ///
  /// * [CreateEditRequest] createEditRequest (required):
  Future<CreateEditResponse?> createEdit(CreateEditRequest createEditRequest,) async {
    final response = await createEditWithHttpInfo(createEditRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateEditResponse',) as CreateEditResponse;
    
    }
    return null;
  }

  /// Creates an embedding vector representing the input text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEmbeddingRequest] createEmbeddingRequest (required):
  Future<Response> createEmbeddingWithHttpInfo(CreateEmbeddingRequest createEmbeddingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/embeddings';

    // ignore: prefer_final_locals
    Object? postBody = createEmbeddingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates an embedding vector representing the input text.
  ///
  /// Parameters:
  ///
  /// * [CreateEmbeddingRequest] createEmbeddingRequest (required):
  Future<CreateEmbeddingResponse?> createEmbedding(CreateEmbeddingRequest createEmbeddingRequest,) async {
    final response = await createEmbeddingWithHttpInfo(createEmbeddingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateEmbeddingResponse',) as CreateEmbeddingResponse;
    
    }
    return null;
  }

  /// Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   Name of the [JSON Lines](https://jsonlines.readthedocs.io/en/latest/) file to be uploaded.  If the `purpose` is set to \\\"fine-tune\\\", each line is a JSON record with \\\"prompt\\\" and \\\"completion\\\" fields representing your [training examples](/docs/guides/fine-tuning/prepare-training-data). 
  ///
  /// * [String] purpose (required):
  ///   The intended purpose of the uploaded documents.  Use \\\"fine-tune\\\" for [Fine-tuning](/docs/api-reference/fine-tunes). This allows us to validate the format of the uploaded file. 
  Future<Response> createFileWithHttpInfo(MultipartFile file, String purpose,) async {
    // ignore: prefer_const_declarations
    final path = r'/files';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (purpose != null) {
      hasFields = true;
      mp.fields[r'purpose'] = parameterToString(purpose);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   Name of the [JSON Lines](https://jsonlines.readthedocs.io/en/latest/) file to be uploaded.  If the `purpose` is set to \\\"fine-tune\\\", each line is a JSON record with \\\"prompt\\\" and \\\"completion\\\" fields representing your [training examples](/docs/guides/fine-tuning/prepare-training-data). 
  ///
  /// * [String] purpose (required):
  ///   The intended purpose of the uploaded documents.  Use \\\"fine-tune\\\" for [Fine-tuning](/docs/api-reference/fine-tunes). This allows us to validate the format of the uploaded file. 
  Future<OpenAIFile?> createFile(MultipartFile file, String purpose,) async {
    final response = await createFileWithHttpInfo(file, purpose,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenAIFile',) as OpenAIFile;
    
    }
    return null;
  }

  /// Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateFineTuneRequest] createFineTuneRequest (required):
  Future<Response> createFineTuneWithHttpInfo(CreateFineTuneRequest createFineTuneRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/fine-tunes';

    // ignore: prefer_final_locals
    Object? postBody = createFineTuneRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// Parameters:
  ///
  /// * [CreateFineTuneRequest] createFineTuneRequest (required):
  Future<FineTune?> createFineTune(CreateFineTuneRequest createFineTuneRequest,) async {
    final response = await createFineTuneWithHttpInfo(createFineTuneRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FineTune',) as FineTune;
    
    }
    return null;
  }

  /// Creates an image given a prompt.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateImageRequest] createImageRequest (required):
  Future<Response> createImageWithHttpInfo(CreateImageRequest createImageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/images/generations';

    // ignore: prefer_final_locals
    Object? postBody = createImageRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates an image given a prompt.
  ///
  /// Parameters:
  ///
  /// * [CreateImageRequest] createImageRequest (required):
  Future<ImagesResponse?> createImage(CreateImageRequest createImageRequest,) async {
    final response = await createImageWithHttpInfo(createImageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImagesResponse',) as ImagesResponse;
    
    }
    return null;
  }

  /// Creates an edited or extended image given an original image and a prompt.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask.
  ///
  /// * [String] prompt (required):
  ///   A text description of the desired image(s). The maximum length is 1000 characters.
  ///
  /// * [MultipartFile] mask:
  ///   An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where `image` should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as `image`.
  ///
  /// * [int] n:
  ///   The number of images to generate. Must be between 1 and 10.
  ///
  /// * [String] size:
  ///   The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
  ///
  /// * [String] responseFormat:
  ///   The format in which the generated images are returned. Must be one of `url` or `b64_json`.
  ///
  /// * [String] user:
  ///   A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  Future<Response> createImageEditWithHttpInfo(MultipartFile image, String prompt, { MultipartFile? mask, int? n, String? size, String? responseFormat, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/edits';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (mask != null) {
      hasFields = true;
      mp.fields[r'mask'] = mask.field;
      mp.files.add(mask);
    }
    if (prompt != null) {
      hasFields = true;
      mp.fields[r'prompt'] = parameterToString(prompt);
    }
    if (n != null) {
      hasFields = true;
      mp.fields[r'n'] = parameterToString(n);
    }
    if (size != null) {
      hasFields = true;
      mp.fields[r'size'] = parameterToString(size);
    }
    if (responseFormat != null) {
      hasFields = true;
      mp.fields[r'response_format'] = parameterToString(responseFormat);
    }
    if (user != null) {
      hasFields = true;
      mp.fields[r'user'] = parameterToString(user);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates an edited or extended image given an original image and a prompt.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask.
  ///
  /// * [String] prompt (required):
  ///   A text description of the desired image(s). The maximum length is 1000 characters.
  ///
  /// * [MultipartFile] mask:
  ///   An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where `image` should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as `image`.
  ///
  /// * [int] n:
  ///   The number of images to generate. Must be between 1 and 10.
  ///
  /// * [String] size:
  ///   The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
  ///
  /// * [String] responseFormat:
  ///   The format in which the generated images are returned. Must be one of `url` or `b64_json`.
  ///
  /// * [String] user:
  ///   A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  Future<ImagesResponse?> createImageEdit(MultipartFile image, String prompt, { MultipartFile? mask, int? n, String? size, String? responseFormat, String? user, }) async {
    final response = await createImageEditWithHttpInfo(image, prompt,  mask: mask, n: n, size: size, responseFormat: responseFormat, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImagesResponse',) as ImagesResponse;
    
    }
    return null;
  }

  /// Creates a variation of a given image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square.
  ///
  /// * [int] n:
  ///   The number of images to generate. Must be between 1 and 10.
  ///
  /// * [String] size:
  ///   The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
  ///
  /// * [String] responseFormat:
  ///   The format in which the generated images are returned. Must be one of `url` or `b64_json`.
  ///
  /// * [String] user:
  ///   A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  Future<Response> createImageVariationWithHttpInfo(MultipartFile image, { int? n, String? size, String? responseFormat, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/variations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (n != null) {
      hasFields = true;
      mp.fields[r'n'] = parameterToString(n);
    }
    if (size != null) {
      hasFields = true;
      mp.fields[r'size'] = parameterToString(size);
    }
    if (responseFormat != null) {
      hasFields = true;
      mp.fields[r'response_format'] = parameterToString(responseFormat);
    }
    if (user != null) {
      hasFields = true;
      mp.fields[r'user'] = parameterToString(user);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a variation of a given image.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square.
  ///
  /// * [int] n:
  ///   The number of images to generate. Must be between 1 and 10.
  ///
  /// * [String] size:
  ///   The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
  ///
  /// * [String] responseFormat:
  ///   The format in which the generated images are returned. Must be one of `url` or `b64_json`.
  ///
  /// * [String] user:
  ///   A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  Future<ImagesResponse?> createImageVariation(MultipartFile image, { int? n, String? size, String? responseFormat, String? user, }) async {
    final response = await createImageVariationWithHttpInfo(image,  n: n, size: size, responseFormat: responseFormat, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImagesResponse',) as ImagesResponse;
    
    }
    return null;
  }

  /// Classifies if text violates OpenAI's Content Policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateModerationRequest] createModerationRequest (required):
  Future<Response> createModerationWithHttpInfo(CreateModerationRequest createModerationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/moderations';

    // ignore: prefer_final_locals
    Object? postBody = createModerationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Classifies if text violates OpenAI's Content Policy
  ///
  /// Parameters:
  ///
  /// * [CreateModerationRequest] createModerationRequest (required):
  Future<CreateModerationResponse?> createModeration(CreateModerationRequest createModerationRequest,) async {
    final response = await createModerationWithHttpInfo(createModerationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateModerationResponse',) as CreateModerationResponse;
    
    }
    return null;
  }

  /// The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When `file` is set, the search endpoint searches over all the documents in the given file and returns up to the `max_rerank` number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///   The ID of the engine to use for this request.  You can select one of `ada`, `babbage`, `curie`, or `davinci`.
  ///
  /// * [CreateSearchRequest] createSearchRequest (required):
  Future<Response> createSearchWithHttpInfo(String engineId, CreateSearchRequest createSearchRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/engines/{engine_id}/search'
      .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody = createSearchRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When `file` is set, the search endpoint searches over all the documents in the given file and returns up to the `max_rerank` number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///   The ID of the engine to use for this request.  You can select one of `ada`, `babbage`, `curie`, or `davinci`.
  ///
  /// * [CreateSearchRequest] createSearchRequest (required):
  Future<CreateSearchResponse?> createSearch(String engineId, CreateSearchRequest createSearchRequest,) async {
    final response = await createSearchWithHttpInfo(engineId, createSearchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSearchResponse',) as CreateSearchResponse;
    
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<Response> deleteFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<DeleteFileResponse?> deleteFile(String fileId,) async {
    final response = await deleteFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteFileResponse',) as DeleteFileResponse;
    
    }
    return null;
  }

  /// Delete a fine-tuned model. You must have the Owner role in your organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   The model to delete
  Future<Response> deleteModelWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/models/{model}'
      .replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a fine-tuned model. You must have the Owner role in your organization.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   The model to delete
  Future<DeleteModelResponse?> deleteModel(String model,) async {
    final response = await deleteModelWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteModelResponse',) as DeleteModelResponse;
    
    }
    return null;
  }

  /// Returns the contents of the specified file
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<Response> downloadFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/content'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the contents of the specified file
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<String?> downloadFile(String fileId,) async {
    final response = await downloadFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEnginesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/engines';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.
  Future<ListEnginesResponse?> listEngines() async {
    final response = await listEnginesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListEnginesResponse',) as ListEnginesResponse;
    
    }
    return null;
  }

  /// Returns a list of files that belong to the user's organization.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/files';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns a list of files that belong to the user's organization.
  Future<ListFilesResponse?> listFiles() async {
    final response = await listFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFilesResponse',) as ListFilesResponse;
    
    }
    return null;
  }

  /// Get fine-grained status updates for a fine-tune job. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job to get events for. 
  ///
  /// * [bool] stream:
  ///   Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a `data: [DONE]` message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned. 
  Future<Response> listFineTuneEventsWithHttpInfo(String fineTuneId, { bool? stream, }) async {
    // ignore: prefer_const_declarations
    final path = r'/fine-tunes/{fine_tune_id}/events'
      .replaceAll('{fine_tune_id}', fineTuneId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stream != null) {
      queryParams.addAll(_queryParams('', 'stream', stream));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get fine-grained status updates for a fine-tune job. 
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job to get events for. 
  ///
  /// * [bool] stream:
  ///   Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a `data: [DONE]` message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned. 
  Future<ListFineTuneEventsResponse?> listFineTuneEvents(String fineTuneId, { bool? stream, }) async {
    final response = await listFineTuneEventsWithHttpInfo(fineTuneId,  stream: stream, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFineTuneEventsResponse',) as ListFineTuneEventsResponse;
    
    }
    return null;
  }

  /// List your organization's fine-tuning jobs 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFineTunesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/fine-tunes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List your organization's fine-tuning jobs 
  Future<ListFineTunesResponse?> listFineTunes() async {
    final response = await listFineTunesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFineTunesResponse',) as ListFineTunesResponse;
    
    }
    return null;
  }

  /// Lists the currently available models, and provides basic information about each one such as the owner and availability.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/models';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Lists the currently available models, and provides basic information about each one such as the owner and availability.
  Future<ListModelsResponse?> listModels() async {
    final response = await listModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListModelsResponse',) as ListModelsResponse;
    
    }
    return null;
  }

  /// Retrieves a model instance, providing basic information about it such as the owner and availability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///   The ID of the engine to use for this request 
  Future<Response> retrieveEngineWithHttpInfo(String engineId,) async {
    // ignore: prefer_const_declarations
    final path = r'/engines/{engine_id}'
      .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves a model instance, providing basic information about it such as the owner and availability.
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///   The ID of the engine to use for this request 
  Future<Engine?> retrieveEngine(String engineId,) async {
    final response = await retrieveEngineWithHttpInfo(engineId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Engine',) as Engine;
    
    }
    return null;
  }

  /// Returns information about a specific file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<Response> retrieveFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns information about a specific file.
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to use for this request
  Future<OpenAIFile?> retrieveFile(String fileId,) async {
    final response = await retrieveFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenAIFile',) as OpenAIFile;
    
    }
    return null;
  }

  /// Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job 
  Future<Response> retrieveFineTuneWithHttpInfo(String fineTuneId,) async {
    // ignore: prefer_const_declarations
    final path = r'/fine-tunes/{fine_tune_id}'
      .replaceAll('{fine_tune_id}', fineTuneId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
  ///
  /// Parameters:
  ///
  /// * [String] fineTuneId (required):
  ///   The ID of the fine-tune job 
  Future<FineTune?> retrieveFineTune(String fineTuneId,) async {
    final response = await retrieveFineTuneWithHttpInfo(fineTuneId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FineTune',) as FineTune;
    
    }
    return null;
  }

  /// Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   The ID of the model to use for this request
  Future<Response> retrieveModelWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/models/{model}'
      .replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   The ID of the model to use for this request
  Future<Model?> retrieveModel(String model,) async {
    final response = await retrieveModelWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Model',) as Model;
    
    }
    return null;
  }
}
