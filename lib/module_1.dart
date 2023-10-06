library module_1;
import 'package:auth_module/auth.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  double mul(double x, double y) => x * y;
}


class Auth {
  void setAuth(String value) {
    FileSystemManager().token = value;
  }

  String getAuth() {
    return FileSystemManager().token ?? "Token is null";
  }
}