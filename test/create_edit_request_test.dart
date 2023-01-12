//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for CreateEditRequest
void main() {
  // final instance = CreateEditRequest();

  group('test CreateEditRequest', () {
    // ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // The input text to use as a starting point for the edit.
    // String input (default value: '')
    test('to test the property `input`', () async {
      // TODO
    });

    // The instruction that tells the model how to edit the prompt.
    // String instruction
    test('to test the property `instruction`', () async {
      // TODO
    });

    // How many edits to generate for the input and instruction.
    // int n (default value: 1)
    test('to test the property `n`', () async {
      // TODO
    });

    // What [sampling temperature](https://towardsdatascience.com/how-to-sample-from-language-models-682bceb97277) to use. Higher values means the model will take more risks. Try 0.9 for more creative applications, and 0 (argmax sampling) for ones with a well-defined answer.  We generally recommend altering this or `top_p` but not both. 
    // num temperature (default value: 1)
    test('to test the property `temperature`', () async {
      // TODO
    });

    // An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or `temperature` but not both. 
    // num topP (default value: 1)
    test('to test the property `topP`', () async {
      // TODO
    });


  });

}
