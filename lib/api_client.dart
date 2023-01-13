part of openai.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.openai.com/v1"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'CreateAnswerRequest':
          return new CreateAnswerRequest.fromJson(value);
        case 'CreateAnswerResponse':
          return new CreateAnswerResponse.fromJson(value);
        case 'CreateAnswerResponseSelectedDocuments':
          return new CreateAnswerResponseSelectedDocuments.fromJson(value);
        case 'CreateClassificationRequest':
          return new CreateClassificationRequest.fromJson(value);
        case 'CreateClassificationResponse':
          return new CreateClassificationResponse.fromJson(value);
        case 'CreateClassificationResponseSelectedExamples':
          return new CreateClassificationResponseSelectedExamples.fromJson(value);
        case 'CreateCompletionRequest':
          return new CreateCompletionRequest.fromJson(value);
        case 'CreateCompletionResponse':
          return new CreateCompletionResponse.fromJson(value);
        case 'CreateCompletionResponseChoices':
          return new CreateCompletionResponseChoices.fromJson(value);
        case 'CreateCompletionResponseLogprobs':
          return new CreateCompletionResponseLogprobs.fromJson(value);
        case 'CreateCompletionResponseUsage':
          return new CreateCompletionResponseUsage.fromJson(value);
        case 'CreateEditRequest':
          return new CreateEditRequest.fromJson(value);
        case 'CreateEditResponse':
          return new CreateEditResponse.fromJson(value);
        case 'CreateEmbeddingRequest':
          return new CreateEmbeddingRequest.fromJson(value);
        case 'CreateEmbeddingResponse':
          return new CreateEmbeddingResponse.fromJson(value);
        case 'CreateEmbeddingResponseData':
          return new CreateEmbeddingResponseData.fromJson(value);
        case 'CreateEmbeddingResponseUsage':
          return new CreateEmbeddingResponseUsage.fromJson(value);
        case 'CreateFileRequest':
          return new CreateFileRequest.fromJson(value);
        case 'CreateFineTuneRequest':
          return new CreateFineTuneRequest.fromJson(value);
        case 'CreateImageEditRequest':
          return new CreateImageEditRequest.fromJson(value);
        case 'CreateImageRequest':
          return new CreateImageRequest.fromJson(value);
        case 'CreateImageVariationRequest':
          return new CreateImageVariationRequest.fromJson(value);
        case 'CreateModerationRequest':
          return new CreateModerationRequest.fromJson(value);
        case 'CreateModerationResponse':
          return new CreateModerationResponse.fromJson(value);
        case 'CreateModerationResponseCategories':
          return new CreateModerationResponseCategories.fromJson(value);
        case 'CreateModerationResponseCategoryScores':
          return new CreateModerationResponseCategoryScores.fromJson(value);
        case 'CreateModerationResponseResults':
          return new CreateModerationResponseResults.fromJson(value);
        case 'CreateSearchRequest':
          return new CreateSearchRequest.fromJson(value);
        case 'CreateSearchResponse':
          return new CreateSearchResponse.fromJson(value);
        case 'CreateSearchResponseData':
          return new CreateSearchResponseData.fromJson(value);
        case 'DeleteFileResponse':
          return new DeleteFileResponse.fromJson(value);
        case 'DeleteModelResponse':
          return new DeleteModelResponse.fromJson(value);
        case 'Engine':
          return new Engine.fromJson(value);
        case 'FineTune':
          return new FineTune.fromJson(value);
        case 'FineTuneEvent':
          return new FineTuneEvent.fromJson(value);
        case 'ImagesResponse':
          return new ImagesResponse.fromJson(value);
        case 'ImagesResponseData':
          return new ImagesResponseData.fromJson(value);
        case 'ListEnginesResponse':
          return new ListEnginesResponse.fromJson(value);
        case 'ListFilesResponse':
          return new ListFilesResponse.fromJson(value);
        case 'ListFineTuneEventsResponse':
          return new ListFineTuneEventsResponse.fromJson(value);
        case 'ListFineTunesResponse':
          return new ListFineTunesResponse.fromJson(value);
        case 'ListModelsResponse':
          return new ListModelsResponse.fromJson(value);
        case 'Model':
          return new Model.fromJson(value);
        case 'OneOfCreateAnswerRequestStop':
          return new OneOfCreateAnswerRequestStop.fromJson(value);
        case 'OneOfCreateCompletionRequestPrompt':
          return new OneOfCreateCompletionRequestPrompt.fromJson(value);
        case 'OneOfCreateCompletionRequestStop':
          return new OneOfCreateCompletionRequestStop.fromJson(value);
        case 'OneOfCreateEmbeddingRequestInput':
          return new OneOfCreateEmbeddingRequestInput.fromJson(value);
        case 'OneOfCreateModerationRequestInput':
          return new OneOfCreateModerationRequestInput.fromJson(value);
        case 'OpenAIFile':
          return new OpenAIFile.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
