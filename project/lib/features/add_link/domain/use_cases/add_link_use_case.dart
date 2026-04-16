import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/add_link/domain/entities/add_link_entity.dart';
import 'package:project/features/add_link/domain/repositories/add_link_repository_domain.dart';


@lazySingleton
class AddLinkUseCase {
  final AddLinkRepositoryDomain _repositoryData;

  AddLinkUseCase(this._repositoryData);

   Future<Result<AddLinkEntity, Failure>> getAddLink({required String url ,required String title}) async {
    return _repositoryData.getAddLink(url: url, title: title);
  }
}
