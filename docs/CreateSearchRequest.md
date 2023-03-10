# swagger.model.CreateSearchRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** | Query to search against the documents. | [default to null]
**documents** | **List&lt;String&gt;** | Up to 200 documents to search over, provided as a list of strings.  The maximum document length (in tokens) is 2034 minus the number of tokens in the query.  You should specify either &#x60;documents&#x60; or a &#x60;file&#x60;, but not both.  | [optional] [default to []]
**file** | **String** | The ID of an uploaded file that contains documents to search over.  You should specify either &#x60;documents&#x60; or a &#x60;file&#x60;, but not both.  | [optional] [default to null]
**maxRerank** | **int** | The maximum number of documents to be re-ranked and returned by search.  This flag only takes effect when &#x60;file&#x60; is set.  | [optional] [default to 200]
**returnMetadata** | **bool** | A special boolean flag for showing metadata. If set to &#x60;true&#x60;, each document entry in the returned JSON will contain a \&quot;metadata\&quot; field.  This flag only takes effect when &#x60;file&#x60; is set.  | [optional] [default to false]
**user** | **String** | A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

