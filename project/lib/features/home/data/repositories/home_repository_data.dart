
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/network_exceptions.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/home/data/models/link_model.dart';
import 'package:project/features/home/domain/entities/home_entity.dart';

import 'package:project/features/home/data/datasources/home_remote_data_source.dart';

import 'package:project/features/home/domain/repositories/home_repository_domain.dart';

@LazySingleton(as: HomeRepositoryDomain)
class HomeRepositoryData implements HomeRepositoryDomain{
  final BaseHomeRemoteDataSource remoteDataSource;


  HomeRepositoryData(this.remoteDataSource);

@override
  Future<Result<HomeEntity, Failure>> getHome() async {
    try {
      final response = await remoteDataSource.getHome();
      return  Success( HomeEntity(links: response.map((item) => item.toEntity()).toList()),
      );
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
