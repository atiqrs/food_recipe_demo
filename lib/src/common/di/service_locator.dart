import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/remote_data/api_client.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_helper.dart';
import 'package:food_recipe_demo/src/common/resources/endpoints.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/datasources/home_rest_client.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/repositories/home_repository.dart';
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
  serviceLocator
    ..registerSingleton(Dio())
    ..registerSingleton(DioClient(serviceLocator<Dio>()))
    ..registerSingleton(
      await DioHelper.createPublicKeyPinnedDio(
        Endpoints.baseUrl,
      ),
      instanceName: dioInstanceName,
    );

  _setupRealRestClients();
}

void _setupRealRestClients() {
  serviceLocator.registerFactory(() => HomeRestClient(serviceLocator.get(instanceName: dioInstanceName)));
}

void _setupDomain() {
  serviceLocator.registerFactory(() => HomeRepository(serviceLocator.get()));
}

void _setupCubits() {
  serviceLocator.registerFactory(() => HomeScreenCubit(serviceLocator.get()));
}

void _setupUtils() {}
