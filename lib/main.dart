import 'package:flutter/material.dart';
import 'package:to_do/core/di/impl/di_container_impl.dart';
import 'package:to_do/core/di/service_locator/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final diContainer = makeDIContainer();
  await setup(diContainer);
  runApp(diContainer.makeApp());
}
