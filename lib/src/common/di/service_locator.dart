import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
const dioInstanceName = "appDio";

Future<void> setupServiceLocator() async {
  _setupUtils();
  await _setupData();
  _setupDomain();
  _setupCubits();
}

Future<void> _setupData() async {
  _setupRealRestClients();
}

void _setupRealRestClients() {}

void _setupDomain() {}

void _setupCubits() {}

void _setupUtils() {}
