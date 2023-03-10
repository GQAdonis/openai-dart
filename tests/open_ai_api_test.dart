import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for OpenAIApi
void main() {
  var instance = new OpenAIApi();

  group('tests for OpenAIApi', () {
    // Immediately cancel a fine-tune job. 
    //
    //Future<FineTune> cancelFineTune(String fineTuneId) async
    test('test cancelFineTune', () async {
      // TODO
    });

    // Answers the specified question using the provided documents and examples.  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions). 
    //
    //Future<CreateAnswerResponse> createAnswer(CreateAnswerRequest body) async
    test('test createAnswer', () async {
      // TODO
    });

    // Classifies the specified `query` using provided examples.  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples to select the ones most relevant for the particular query. Then, the relevant examples are combined with the query to construct a prompt to produce the final label via the [completions](/docs/api-reference/completions) endpoint.  Labeled examples can be provided via an uploaded `file`, or explicitly listed in the request using the `examples` parameter for quick tests and small scale use cases. 
    //
    //Future<CreateClassificationResponse> createClassification(CreateClassificationRequest body) async
    test('test createClassification', () async {
      // TODO
    });

    // Creates a completion for the provided prompt and parameters
    //
    //Future<CreateCompletionResponse> createCompletion(CreateCompletionRequest body) async
    test('test createCompletion', () async {
      // TODO
    });

    // Creates a new edit for the provided input, instruction, and parameters
    //
    //Future<CreateEditResponse> createEdit(CreateEditRequest body) async
    test('test createEdit', () async {
      // TODO
    });

    // Creates an embedding vector representing the input text.
    //
    //Future<CreateEmbeddingResponse> createEmbedding(CreateEmbeddingRequest body) async
    test('test createEmbedding', () async {
      // TODO
    });

    // Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit. 
    //
    //Future<OpenAIFile> createFile(String file, String purpose) async
    test('test createFile', () async {
      // TODO
    });

    // Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
    //
    //Future<FineTune> createFineTune(CreateFineTuneRequest body) async
    test('test createFineTune', () async {
      // TODO
    });

    // Creates an image given a prompt.
    //
    //Future<ImagesResponse> createImage(CreateImageRequest body) async
    test('test createImage', () async {
      // TODO
    });

    // Creates an edited or extended image given an original image and a prompt.
    //
    //Future<ImagesResponse> createImageEdit(String image, String mask, String prompt, int n, String size, String responseFormat, String user) async
    test('test createImageEdit', () async {
      // TODO
    });

    // Creates a variation of a given image.
    //
    //Future<ImagesResponse> createImageVariation(String image, int n, String size, String responseFormat, String user) async
    test('test createImageVariation', () async {
      // TODO
    });

    // Classifies if text violates OpenAI's Content Policy
    //
    //Future<CreateModerationResponse> createModeration(CreateModerationRequest body) async
    test('test createModeration', () async {
      // TODO
    });

    // The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When `file` is set, the search endpoint searches over all the documents in the given file and returns up to the `max_rerank` number of documents. These documents will be returned along with their search scores.  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query. 
    //
    //Future<CreateSearchResponse> createSearch(CreateSearchRequest body, String engineId) async
    test('test createSearch', () async {
      // TODO
    });

    // Delete a file.
    //
    //Future<DeleteFileResponse> deleteFile(String fileId) async
    test('test deleteFile', () async {
      // TODO
    });

    // Delete a fine-tuned model. You must have the Owner role in your organization.
    //
    //Future<DeleteModelResponse> deleteModel(String model) async
    test('test deleteModel', () async {
      // TODO
    });

    // Returns the contents of the specified file
    //
    //Future<String> downloadFile(String fileId) async
    test('test downloadFile', () async {
      // TODO
    });

    // Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.
    //
    //Future<ListEnginesResponse> listEngines() async
    test('test listEngines', () async {
      // TODO
    });

    // Returns a list of files that belong to the user's organization.
    //
    //Future<ListFilesResponse> listFiles() async
    test('test listFiles', () async {
      // TODO
    });

    // Get fine-grained status updates for a fine-tune job. 
    //
    //Future<ListFineTuneEventsResponse> listFineTuneEvents(String fineTuneId, { bool stream }) async
    test('test listFineTuneEvents', () async {
      // TODO
    });

    // List your organization's fine-tuning jobs 
    //
    //Future<ListFineTunesResponse> listFineTunes() async
    test('test listFineTunes', () async {
      // TODO
    });

    // Lists the currently available models, and provides basic information about each one such as the owner and availability.
    //
    //Future<ListModelsResponse> listModels() async
    test('test listModels', () async {
      // TODO
    });

    // Retrieves a model instance, providing basic information about it such as the owner and availability.
    //
    //Future<Engine> retrieveEngine(String engineId) async
    test('test retrieveEngine', () async {
      // TODO
    });

    // Returns information about a specific file.
    //
    //Future<OpenAIFile> retrieveFile(String fileId) async
    test('test retrieveFile', () async {
      // TODO
    });

    // Gets info about the fine-tune job.  [Learn more about Fine-tuning](/docs/guides/fine-tuning) 
    //
    //Future<FineTune> retrieveFineTune(String fineTuneId) async
    test('test retrieveFineTune', () async {
      // TODO
    });

    // Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
    //
    //Future<Model> retrieveModel(String model) async
    test('test retrieveModel', () async {
      // TODO
    });

  });
}
