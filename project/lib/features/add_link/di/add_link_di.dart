import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'add_link_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAddLink',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/add_link'],
)
void configureAddLink(GetIt getIt) {
  getIt.initAddLink();
}
