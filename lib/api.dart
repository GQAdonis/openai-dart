//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openai.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/open_ai_api.dart';

part 'model/create_answer_request.dart';
part 'model/create_answer_request_stop.dart';
part 'model/create_answer_response.dart';
part 'model/create_answer_response_selected_documents_inner.dart';
part 'model/create_classification_request.dart';
part 'model/create_classification_response.dart';
part 'model/create_classification_response_selected_examples_inner.dart';
part 'model/create_completion_request.dart';
part 'model/create_completion_request_prompt.dart';
part 'model/create_completion_request_stop.dart';
part 'model/create_completion_response.dart';
part 'model/create_completion_response_choices_inner.dart';
part 'model/create_completion_response_choices_inner_logprobs.dart';
part 'model/create_completion_response_usage.dart';
part 'model/create_edit_request.dart';
part 'model/create_edit_response.dart';
part 'model/create_embedding_request.dart';
part 'model/create_embedding_request_input.dart';
part 'model/create_embedding_response.dart';
part 'model/create_embedding_response_data_inner.dart';
part 'model/create_embedding_response_usage.dart';
part 'model/create_fine_tune_request.dart';
part 'model/create_image_request.dart';
part 'model/create_moderation_request.dart';
part 'model/create_moderation_request_input.dart';
part 'model/create_moderation_response.dart';
part 'model/create_moderation_response_results_inner.dart';
part 'model/create_moderation_response_results_inner_categories.dart';
part 'model/create_moderation_response_results_inner_category_scores.dart';
part 'model/create_search_request.dart';
part 'model/create_search_response.dart';
part 'model/create_search_response_data_inner.dart';
part 'model/delete_file_response.dart';
part 'model/delete_model_response.dart';
part 'model/engine.dart';
part 'model/fine_tune.dart';
part 'model/fine_tune_event.dart';
part 'model/images_response.dart';
part 'model/images_response_data_inner.dart';
part 'model/list_engines_response.dart';
part 'model/list_files_response.dart';
part 'model/list_fine_tune_events_response.dart';
part 'model/list_fine_tunes_response.dart';
part 'model/list_models_response.dart';
part 'model/model.dart';
part 'model/open_ai_file.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
