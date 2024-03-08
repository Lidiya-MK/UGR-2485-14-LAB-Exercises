import 'dart:io';

void main() {
  try {
    File file = File('sample.txt');
    String content = file.readAsStringSync();
    print('File content: $content');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
