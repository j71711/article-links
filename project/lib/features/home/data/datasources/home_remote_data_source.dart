import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project/core/services/local_keys_service.dart';
import 'package:project/features/home/data/models/link_model.dart';
import 'package:project/core/errors/network_exceptions.dart';


abstract class BaseHomeRemoteDataSource {
  Future<List<LinkModel>> getHome();
}


@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   HomeRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<List<LinkModel>> getHome() async {
    try {
  final linksLoading = await _supabase.from('links').select();
      return linksLoading.map((item) => LinkModel.fromJson(item)).toList();
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}

