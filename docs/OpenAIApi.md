# swagger.api.OpenAIApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelFineTune**](OpenAIApi.md#cancelFineTune) | **POST** /fine-tunes/{fine_tune_id}/cancel | Immediately cancel a fine-tune job. 
[**createAnswer**](OpenAIApi.md#createAnswer) | **POST** /answers | Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 
[**createClassification**](OpenAIApi.md#createClassification) | **POST** /classifications | Classifies the specified &#x60;query&#x60; using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded &#x60;file&#x60;, or explicitly listed in the request using the &#x60;examples&#x60; parameter for quick tests and small scale use cases. 
[**createCompletion**](OpenAIApi.md#createCompletion) | **POST** /completions | Creates a completion for the provided prompt and parameters
[**createEdit**](OpenAIApi.md#createEdit) | **POST** /edits | Creates a new edit for the provided input, instruction, and parameters
[**createEmbedding**](OpenAIApi.md#createEmbedding) | **POST** /embeddings | Creates an embedding vector representing the input text.
[**createFile**](OpenAIApi.md#createFile) | **POST** /files | Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 
[**createFineTune**](OpenAIApi.md#createFineTune) | **POST** /fine-tunes | Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
[**createImage**](OpenAIApi.md#createImage) | **POST** /images/generations | Creates an image given a prompt.
[**createImageEdit**](OpenAIApi.md#createImageEdit) | **POST** /images/edits | Creates an edited or extended image given an original image and a prompt.
[**createImageVariation**](OpenAIApi.md#createImageVariation) | **POST** /images/variations | Creates a variation of a given image.
[**createModeration**](OpenAIApi.md#createModeration) | **POST** /moderations | Classifies if text violates OpenAI&#x27;s Content Policy
[**createSearch**](OpenAIApi.md#createSearch) | **POST** /engines/{engine_id}/search | The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When &#x60;file&#x60; is set, the search endpoint searches over all the documents in the given file and returns up to the &#x60;max_rerank&#x60; number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 
[**deleteFile**](OpenAIApi.md#deleteFile) | **DELETE** /files/{file_id} | Delete a file.
[**deleteModel**](OpenAIApi.md#deleteModel) | **DELETE** /models/{model} | Delete a fine-tuned model. You must have the Owner role in your organization.
[**downloadFile**](OpenAIApi.md#downloadFile) | **GET** /files/{file_id}/content | Returns the contents of the specified file
[**listEngines**](OpenAIApi.md#listEngines) | **GET** /engines | Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.
[**listFiles**](OpenAIApi.md#listFiles) | **GET** /files | Returns a list of files that belong to the user&#x27;s organization.
[**listFineTuneEvents**](OpenAIApi.md#listFineTuneEvents) | **GET** /fine-tunes/{fine_tune_id}/events | Get fine-grained status updates for a fine-tune job. 
[**listFineTunes**](OpenAIApi.md#listFineTunes) | **GET** /fine-tunes | List your organization&#x27;s fine-tuning jobs 
[**listModels**](OpenAIApi.md#listModels) | **GET** /models | Lists the currently available models, and provides basic information about each one such as the owner and availability.
[**retrieveEngine**](OpenAIApi.md#retrieveEngine) | **GET** /engines/{engine_id} | Retrieves a model instance, providing basic information about it such as the owner and availability.
[**retrieveFile**](OpenAIApi.md#retrieveFile) | **GET** /files/{file_id} | Returns information about a specific file.
[**retrieveFineTune**](OpenAIApi.md#retrieveFineTune) | **GET** /fine-tunes/{fine_tune_id} | Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
[**retrieveModel**](OpenAIApi.md#retrieveModel) | **GET** /models/{model} | Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

# **cancelFineTune**
> FineTune cancelFineTune(fineTuneId)

Immediately cancel a fine-tune job. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fineTuneId = fineTuneId_example; // String | The ID of the fine-tune job to cancel 

try {
    var result = api_instance.cancelFineTune(fineTuneId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->cancelFineTune: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuneId** | **String**| The ID of the fine-tune job to cancel  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAnswer**
> CreateAnswerResponse createAnswer(body)

Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateAnswerRequest(); // CreateAnswerRequest | 

try {
    var result = api_instance.createAnswer(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createAnswer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAnswerRequest**](CreateAnswerRequest.md)|  | 

### Return type

[**CreateAnswerResponse**](CreateAnswerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClassification**
> CreateClassificationResponse createClassification(body)

Classifies the specified `query` using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded `file`, or explicitly listed in the request using the `examples` parameter for quick tests and small scale use cases. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateClassificationRequest(); // CreateClassificationRequest | 

try {
    var result = api_instance.createClassification(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createClassification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateClassificationRequest**](CreateClassificationRequest.md)|  | 

### Return type

[**CreateClassificationResponse**](CreateClassificationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCompletion**
> CreateCompletionResponse createCompletion(body)

Creates a completion for the provided prompt and parameters

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateCompletionRequest(); // CreateCompletionRequest | 

try {
    var result = api_instance.createCompletion(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createCompletion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCompletionRequest**](CreateCompletionRequest.md)|  | 

### Return type

[**CreateCompletionResponse**](CreateCompletionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEdit**
> CreateEditResponse createEdit(body)

Creates a new edit for the provided input, instruction, and parameters

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateEditRequest(); // CreateEditRequest | 

try {
    var result = api_instance.createEdit(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createEdit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEditRequest**](CreateEditRequest.md)|  | 

### Return type

[**CreateEditResponse**](CreateEditResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmbedding**
> CreateEmbeddingResponse createEmbedding(body)

Creates an embedding vector representing the input text.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateEmbeddingRequest(); // CreateEmbeddingRequest | 

try {
    var result = api_instance.createEmbedding(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createEmbedding: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEmbeddingRequest**](CreateEmbeddingRequest.md)|  | 

### Return type

[**CreateEmbeddingResponse**](CreateEmbeddingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFile**
> OpenAIFile createFile(file, purpose)

Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var file = file_example; // String | 
var purpose = purpose_example; // String | 

try {
    var result = api_instance.createFile(file, purpose);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**|  | 
 **purpose** | **String**|  | 

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFineTune**
> FineTune createFineTune(body)

Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateFineTuneRequest(); // CreateFineTuneRequest | 

try {
    var result = api_instance.createFineTune(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createFineTune: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFineTuneRequest**](CreateFineTuneRequest.md)|  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImage**
> ImagesResponse createImage(body)

Creates an image given a prompt.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateImageRequest(); // CreateImageRequest | 

try {
    var result = api_instance.createImage(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateImageRequest**](CreateImageRequest.md)|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImageEdit**
> ImagesResponse createImageEdit(image, mask, prompt, n, size, responseFormat, user)

Creates an edited or extended image given an original image and a prompt.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var image = image_example; // String | 
var mask = mask_example; // String | 
var prompt = prompt_example; // String | 
var n = 56; // int | 
var size = size_example; // String | 
var responseFormat = responseFormat_example; // String | 
var user = user_example; // String | 

try {
    var result = api_instance.createImageEdit(image, mask, prompt, n, size, responseFormat, user);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createImageEdit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **String****String**|  | 
 **mask** | **String****String**|  | 
 **prompt** | **String**|  | 
 **n** | **int**|  | 
 **size** | **String**|  | 
 **responseFormat** | **String**|  | 
 **user** | **String**|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImageVariation**
> ImagesResponse createImageVariation(image, n, size, responseFormat, user)

Creates a variation of a given image.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var image = image_example; // String | 
var n = 56; // int | 
var size = size_example; // String | 
var responseFormat = responseFormat_example; // String | 
var user = user_example; // String | 

try {
    var result = api_instance.createImageVariation(image, n, size, responseFormat, user);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createImageVariation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **String****String**|  | 
 **n** | **int**|  | 
 **size** | **String**|  | 
 **responseFormat** | **String**|  | 
 **user** | **String**|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createModeration**
> CreateModerationResponse createModeration(body)

Classifies if text violates OpenAI's Content Policy

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateModerationRequest(); // CreateModerationRequest | 

try {
    var result = api_instance.createModeration(body);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createModeration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateModerationRequest**](CreateModerationRequest.md)|  | 

### Return type

[**CreateModerationResponse**](CreateModerationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSearch**
> CreateSearchResponse createSearch(body, engineId)

The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When `file` is set, the search endpoint searches over all the documents in the given file and returns up to the `max_rerank` number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var body = new CreateSearchRequest(); // CreateSearchRequest | 
var engineId = engineId_example; // String | The ID of the engine to use for this request.  You can select one of `ada`, `babbage`, `curie`, or `davinci`.

try {
    var result = api_instance.createSearch(body, engineId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->createSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSearchRequest**](CreateSearchRequest.md)|  | 
 **engineId** | **String**| The ID of the engine to use for this request.  You can select one of &#x60;ada&#x60;, &#x60;babbage&#x60;, &#x60;curie&#x60;, or &#x60;davinci&#x60;. | 

### Return type

[**CreateSearchResponse**](CreateSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
> DeleteFileResponse deleteFile(fileId)

Delete a file.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fileId = fileId_example; // String | The ID of the file to use for this request

try {
    var result = api_instance.deleteFile(fileId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->deleteFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to use for this request | 

### Return type

[**DeleteFileResponse**](DeleteFileResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteModel**
> DeleteModelResponse deleteModel(model)

Delete a fine-tuned model. You must have the Owner role in your organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var model = model_example; // String | The model to delete

try {
    var result = api_instance.deleteModel(model);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->deleteModel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The model to delete | 

### Return type

[**DeleteModelResponse**](DeleteModelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadFile**
> String downloadFile(fileId)

Returns the contents of the specified file

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fileId = fileId_example; // String | The ID of the file to use for this request

try {
    var result = api_instance.downloadFile(fileId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->downloadFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to use for this request | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEngines**
> ListEnginesResponse listEngines()

Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();

try {
    var result = api_instance.listEngines();
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->listEngines: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListEnginesResponse**](ListEnginesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFiles**
> ListFilesResponse listFiles()

Returns a list of files that belong to the user's organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();

try {
    var result = api_instance.listFiles();
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->listFiles: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListFilesResponse**](ListFilesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFineTuneEvents**
> ListFineTuneEventsResponse listFineTuneEvents(fineTuneId, stream)

Get fine-grained status updates for a fine-tune job. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fineTuneId = fineTuneId_example; // String | The ID of the fine-tune job to get events for. 
var stream = true; // bool | Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a `data: [DONE]` message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned. 

try {
    var result = api_instance.listFineTuneEvents(fineTuneId, stream);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->listFineTuneEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuneId** | **String**| The ID of the fine-tune job to get events for.  | 
 **stream** | **bool**| Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a &#x60;data: [DONE]&#x60; message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned.  | [optional] [default to false]

### Return type

[**ListFineTuneEventsResponse**](ListFineTuneEventsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFineTunes**
> ListFineTunesResponse listFineTunes()

List your organization's fine-tuning jobs 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();

try {
    var result = api_instance.listFineTunes();
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->listFineTunes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListFineTunesResponse**](ListFineTunesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listModels**
> ListModelsResponse listModels()

Lists the currently available models, and provides basic information about each one such as the owner and availability.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();

try {
    var result = api_instance.listModels();
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->listModels: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListModelsResponse**](ListModelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveEngine**
> Engine retrieveEngine(engineId)

Retrieves a model instance, providing basic information about it such as the owner and availability.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var engineId = engineId_example; // String | The ID of the engine to use for this request 

try {
    var result = api_instance.retrieveEngine(engineId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->retrieveEngine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**| The ID of the engine to use for this request  | 

### Return type

[**Engine**](Engine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFile**
> OpenAIFile retrieveFile(fileId)

Returns information about a specific file.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fileId = fileId_example; // String | The ID of the file to use for this request

try {
    var result = api_instance.retrieveFile(fileId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->retrieveFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to use for this request | 

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFineTune**
> FineTune retrieveFineTune(fineTuneId)

Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var fineTuneId = fineTuneId_example; // String | The ID of the fine-tune job 

try {
    var result = api_instance.retrieveFineTune(fineTuneId);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->retrieveFineTune: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineTuneId** | **String**| The ID of the fine-tune job  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveModel**
> Model retrieveModel(model)

Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OpenAIApi();
var model = model_example; // String | The ID of the model to use for this request

try {
    var result = api_instance.retrieveModel(model);
    print(result);
} catch (e) {
    print("Exception when calling OpenAIApi->retrieveModel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The ID of the model to use for this request | 

### Return type

[**Model**](Model.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

