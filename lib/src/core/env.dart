import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Environment { local, dev, qa, prod }

class AppEnvironment {
  static late String baseApiUrl;
  static late Environment _environment;

  static Environment get environment => _environment;

  static setupEnv(Environment env) {
    switch (env) {
      case Environment.dev:
        baseApiUrl = 'http://cp23ssa1.sit.kmutt.ac.th/api/dev';
        _environment = Environment.dev;
        break;

      case Environment.qa:
        baseApiUrl = 'https://cp23ssa1.sit.kmutt.ac.th/api/qa';
        _environment = Environment.qa;
        break;

      case Environment.prod:
        baseApiUrl = 'https://cp23ssa1.sit.kmutt.ac.th/api/prod';
        _environment = Environment.prod;
        break;

      default:
        baseApiUrl = dotenv.get('baseApiUrl');
        break;
    }
  }
}
