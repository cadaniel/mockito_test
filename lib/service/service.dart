import 'package:injectable/injectable.dart';
import 'package:mockito_test/model/freezed_model.dart';
import 'package:mockito_test/moor/database.dart';

@injectable
class SampleService {
  final UserDao _userDao;

  SampleService(this._userDao);

  FreezedModel giveModel() {
    return FreezedModel("Test String");
  }

  Future<List<User>> getUsers() async {
    return _userDao.getUsers();
  }

  void saveUser(User user) => _userDao.saveUser(user);
}
