import 'package:flutter/material.dart';
import 'package:to_do/core/di/impl/di_container_impl.dart';

void main() {
  final diContainer = makeDIContainer();
  runApp(diContainer.makeApp());
}
