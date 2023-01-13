# swagger.model.CreateFileRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **String** | Name of the [JSON Lines](https://jsonlines.readthedocs.io/en/latest/) file to be uploaded.  If the &#x60;purpose&#x60; is set to \&quot;fine-tune\&quot;, each line is a JSON record with \&quot;prompt\&quot; and \&quot;completion\&quot; fields representing your [training examples](/docs/guides/fine-tuning/prepare-training-data).  | [default to null]
**purpose** | **String** | The intended purpose of the uploaded documents.  Use \&quot;fine-tune\&quot; for [Fine-tuning](/docs/api-reference/fine-tunes). This allows us to validate the format of the uploaded file.  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

