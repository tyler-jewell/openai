import 'package:dart_openai/dart_openai.dart';

import 'env/env.dart';

void main() {
  // Set the OpenAI API key from the .env file.
  OpenAI.apiKey = Env.apiKey;

  // Creates A Stream Of Completions text.
  Stream<OpenAIStreamCompletionModel> stream =
      OpenAI.instance.completion.createStream(
    model: "gpt-3.5-turbo-instruct",
    n: 1,
    prompt: ["hello"],
  );

  // listen to the stream and print the text.
  stream.listen((event) {
    print(event.choices.first.text);
  });
}
