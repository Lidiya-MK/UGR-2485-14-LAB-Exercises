import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    // Send a GET request to the URL
    final response = await http.get(Uri.parse(url));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Write the downloaded content to a file
      File(savePath).writeAsBytesSync(response.bodyBytes);
      print('Download complete. File saved at: $savePath');
    } else {
      print('Failed to download file. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  // Replace 'YOUR_FILE_URL' and 'YOUR_SAVE_PATH' with your file URL and desired save path
  String fileUrl = 'https://irp-cdn.multiscreensite.com/cb9165b2/files/uploaded/The+48+Laws+Of+Power.pdf';
  String savePath = 'C:\\';

  print('Downloading file...');
  await downloadFile(fileUrl, savePath);
}
