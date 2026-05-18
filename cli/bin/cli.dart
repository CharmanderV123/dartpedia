//import 'package:cli/cli.dart' as cli;
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';


void main(List<String> arguments) async{
//   //Base case: No arguments or 'help' command
//   if (arguments.isEmpty || arguments.first == 'help') {
//     print("Dart Help");
//     printUsage();

//   //Version command
//   } else if(arguments.first == 'version'){
//     print("Dartpedia CLI version: $version");
// }

//   //Search command
//   else if(arguments.first == 'wikipedia'){
//     final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
//     searchWikipedia(inputArgs);
// }

//   //Invalid command
//   else{
//     printUsage();
//   }

//------------------
// Updated command_runner code
  var runner = CommandRunner();
  await runner.run(arguments);
}

// //Helper function to print usage instructions
// void printUsage(){
//   print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>''");
// }

// //Placeholder function for fetching Wikipedia article content
// Future<String> getWikipediaArticle(String articleTitle) async {
//   final url = Uri.https(
//     'en.wikipedia.org',
//     '/api/rest_v1/page/summary/$articleTitle',
//   );
//   final response = await http.get(url);

//   if (response.statusCode == 200){
//     return response.body;
//   }

//   return 'Error: Failed to featch article "$articleTitle". Status code: ${response.statusCode}';
// }


// //Placeholder function for search command
// void searchWikipedia(List<String>? arguments) async{
//   //print('searchWikipedia received arguments: $arguments');
//   final String? articleTitle;

//   //If no arguments provided, prompt user for input
//   if (arguments == null || arguments.isEmpty){
//     print('Please provide an article title.');
//     final inputFromStdin = stdin.readLineSync();
    
//     //Check if user provided input
//     if (inputFromStdin == null || inputFromStdin.isEmpty){
//       print('No article title provided. Exiting.');
//       return;
//     }

//     //Use user input as article title
//     articleTitle = inputFromStdin;
//   }

//   //Join arguments to form article title
//   else{
//     articleTitle = arguments.join(' ');
//   }

//   //Fetch article content
//   var articleContent = await getWikipediaArticle(articleTitle);

//   print('Looking up articles about "$articleTitle". Please Wait.');
//   print('Here you go!');
//   print(articleContent);
// }