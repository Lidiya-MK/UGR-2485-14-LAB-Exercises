import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {

  await Future.delayed(Duration(seconds: 2));

  
  List<String> quotes = [
    "Just when you think it can't get any worse, it can. And just when you think it can't get any better, it can. - John Lennon",
    "It is difficult because we do not dare. - Franklin D. Roosevelt",
    "We become what we think about - William Butler Yeats"
  ];

  // Return a random quote
  Random random = Random();
  return quotes[random.nextInt(quotes.length)];
}

void main() async {
  print("Fetching a random quote...");

  // Use async/await to wait for the quote
  String quote = await fetchQuote();

  // Print the fetched quote
  print( quote);
}
