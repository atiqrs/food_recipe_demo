import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_cubit.dart';
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

void _setupCubits() {
  serviceLocator.registerFactory(() => HomeScreenCubit());
}

void _setupUtils() {}
