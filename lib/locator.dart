import 'package:get_it/get_it.dart';
import 'package:mobile_teacher_app/Services/class_service.dart';
import 'package:mobile_teacher_app/Services/user_service.dart';
import 'package:mobile_teacher_app/services/auth_service.dart';
import 'package:mobile_teacher_app/services/dialog_service.dart';
import 'package:mobile_teacher_app/services/file_service.dart';
import 'package:mobile_teacher_app/services/student_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => ClassService());
  locator.registerLazySingleton(() => FileService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => StudentService());

}