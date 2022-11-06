

import 'dart:io';
import 'package:ceibatest/data_source/rest_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';


void main(){
  test('Datos correctos', () async{
    final dataSource = _getDataSource('api_data.json');
    final name = await dataSource.getData();
    // "name": "Leanne Graham",
    // "phone": "1-770-736-8031 x56442",
    // "email": "Sincere@april.biz",

    expect(name.name, 'Leanne Graham');
    expect(name.phone, '1-770-736-8031 x56442');
    expect(name.email, 'Sincere@april.biz');

  });
}


final headers = {
  HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
};

RestDataSource _getDataSource(String fileName) =>
    RestDataSource(httpClient: _getMockProvider(fileName));


MockClient _getMockProvider(String fileName){
  return MockClient((_) async {
    final fileData =
        await File('test/data_source_test/$fileName').readAsString();
    return Response(fileData, 200);
  });
}