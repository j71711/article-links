import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/add_link/domain/entities/add_link_entity.dart';

abstract class AddLinkRepositoryDomain {
    Future<Result<AddLinkEntity, Failure>> getAddLink({required String url ,required String title});
}
