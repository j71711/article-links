
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/network_exceptions.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/add_link/domain/entities/add_link_entity.dart';

import 'package:project/features/add_link/data/datasources/add_link_remote_data_source.dart';
import 'package:project/features/add_link/data/models/add_link_model.dart';
import 'package:project/features/add_link/domain/repositories/add_link_repository_domain.dart';

@LazySingleton(as: AddLinkRepositoryDomain)
class AddLinkRepositoryData implements AddLinkRepositoryDomain{
  final BaseAddLinkRemoteDataSource remoteDataSource;


  AddLinkRepositoryData(this.remoteDataSource);

@override
  Future<Result<AddLinkEntity, Failure>> getAddLink({required String url ,required String title}) async {
    try {
      final response = await remoteDataSource.getAddLink(url: url, title:title);
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
