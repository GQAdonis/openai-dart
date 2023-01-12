//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openai/api.dart';
import 'package:test/test.dart';

// tests for CreateSearchRequest
void main() {
  // final instance = CreateSearchRequest();

  group('test CreateSearchRequest', () {
    // Query to search against the documents.
    // String query
    test('to test the property `query`', () async {
      // TODO
    });

    // Up to 200 documents to search over, provided as a list of strings.  The maximum document length (in tokens) is 2034 minus the number of tokens in the query.  You should specify either `documents` or a `file`, but not both.
    // List<String> documents (default value: const [])
    test('to test the property `documents`', () async {
      // TODO
    });

    // The ID of an uploaded file that contains documents to search over.  You should specify either `documents` or a `file`, but not both.
    // String file
    test('to test the property `file`', () async {
      // TODO
    });

    // The maximum number of documents to be re-ranked and returned by search.  This flag only takes effect when `file` is set.
    // int maxRerank (default value: 200)
    test('to test the property `maxRerank`', () async {
      // TODO
    });

    // A special boolean flag for showing metadata. If set to `true`, each document entry in the returned JSON will contain a \"metadata\" field.  This flag only takes effect when `file` is set.
    // bool returnMetadata (default value: false)
    test('to test the property `returnMetadata`', () async {
      // TODO
    });

    // A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).
    // String user
    test('to test the property `user`', () async {
      // TODO
    });
  });
}
