import 'package:bloc/bloc.dart';
import 'package:myapp/model/user.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserApi(event);
      yield user;
    } catch (_) {}
  }
}
