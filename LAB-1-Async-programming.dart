Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Data1', 'Data2', 'Data3'];
}

void main() async {
  print('Loading data from the database...');

  List<String> data = await fetchDataFromDatabase();

  print('Loaded data: $data');
}
