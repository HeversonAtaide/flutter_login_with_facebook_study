import 'package:flutter_login_with_facebook_study/app/modules/login/domain/repositories/interfaces/login_repository_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';


class MockClient extends Mock implements Dio {}

void main() {
  ILoginRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = LoginRepository(client);
  });

  group('LoginRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<LoginRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
