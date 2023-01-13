# swagger.model.FineTune

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [default to null]
**object** | **String** |  | [default to null]
**createdAt** | **int** |  | [default to null]
**updatedAt** | **int** |  | [default to null]
**model** | **String** |  | [default to null]
**fineTunedModel** | **String** |  | [default to null]
**organizationId** | **String** |  | [default to null]
**status** | **String** |  | [default to null]
**hyperparams** | [**Object**](Object.md) |  | [default to null]
**trainingFiles** | [**List&lt;OpenAIFile&gt;**](OpenAIFile.md) |  | [default to []]
**validationFiles** | [**List&lt;OpenAIFile&gt;**](OpenAIFile.md) |  | [default to []]
**resultFiles** | [**List&lt;OpenAIFile&gt;**](OpenAIFile.md) |  | [default to []]
**events** | [**List&lt;FineTuneEvent&gt;**](FineTuneEvent.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

