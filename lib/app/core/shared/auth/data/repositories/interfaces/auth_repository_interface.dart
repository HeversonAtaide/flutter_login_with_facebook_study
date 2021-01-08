abstract class IAuthRepository {
  Future getUser();
  Future getFacebookLogin();
  Future<String> getToken();
}