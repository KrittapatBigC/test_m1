library module_1;
import 'package:auth_module/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

class Content {
  Widget buildBtn () {
    return TextButton(
      onPressed: () => throw Exception(),
      child: const Text("Throw Test Exception"),
    );
  }

  Future<void> loadEnv(String envPath) async {
    // await dotenv.load(fileName: '.env.sit');
    await dotenv.load(fileName: envPath);
  }

  String getEnv(String param) {
    return dotenv.env[param] ?? "";
  }

}