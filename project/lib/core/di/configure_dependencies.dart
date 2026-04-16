import 'package:get_it/get_it.dart';
import 'package:project/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:project/features/home/di/home_di.dart';
import 'package:project/features/add_link/di/add_link_di.dart';
import 'package:project/features/sign_up/di/sign_up_di.dart';
import 'package:project/features/sign_in/di/sign_in_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();

    configureHome(getIt);
    configureAddLink(getIt);
    configureSignUp(getIt);
    configureSignIn(getIt);
}
