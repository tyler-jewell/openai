import 'package:dart_openai/dart_openai.dart';
import 'package:example/env/env.dart';

Future<void> main() async {
  // Set the OpenAI API key from the .env file.
  OpenAI.apiKey = Env.apiKey;

  final completion = await OpenAI.instance.completion.create(
    model: "gpt-3.5-turbo-instruct",
    prompt: "Dart is",
  );

  print(completion.choices.first.text);

  // // Creates The Completion
  // OpenAICompletionModel completion = await OpenAI.instance.completion.create(
  //   model: "gpt-3.5-turbo-instruct",
  //   prompt: 'Flutter is ',
  //   maxTokens: 100,
  //   temperature: 0.8,
  // );

  // Prints the completion text.
}
