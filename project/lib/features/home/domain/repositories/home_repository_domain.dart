import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/home/domain/entities/home_entity.dart';

abstract class HomeRepositoryDomain {
    Future<Result<HomeEntity, Failure>> getHome();
}
