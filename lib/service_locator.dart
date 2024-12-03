import 'package:fantasy/features/auth/data/repos/auth_repo.dart';
import 'package:fantasy/features/auth/data/source/auth_firebase_services.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());
  sl.registerSingleton<AuthRepo>(AuthRepoImpl());
}
