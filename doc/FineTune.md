# openapi.model.FineTune

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **String** |  | 
**createdAt** | **int** |  | 
**updatedAt** | **int** |  | 
**model** | **String** |  | 
**fineTunedModel** | **String** |  | 
**organizationId** | **String** |  | 
**status** | **String** |  | 
**hyperparams** | [**Object**](.md) |  | 
**trainingFiles** | [**List<OpenAIFile>**](OpenAIFile.md) |  | [default to const []]
**validationFiles** | [**List<OpenAIFile>**](OpenAIFile.md) |  | [default to const []]
**resultFiles** | [**List<OpenAIFile>**](OpenAIFile.md) |  | [default to const []]
**events** | [**List<FineTuneEvent>**](FineTuneEvent.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


