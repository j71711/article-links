import 'package:injectable/injectable.dart';
import 'package:project/core/services/user_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project/core/services/local_keys_service.dart';
import 'package:project/features/add_link/data/models/add_link_model.dart';
import 'package:project/core/errors/network_exceptions.dart';


abstract class BaseAddLinkRemoteDataSource {
  Future<AddLinkModel> getAddLink({required String url ,required String title});
}


@LazySingleton(as: BaseAddLinkRemoteDataSource)
class AddLinkRemoteDataSource implements BaseAddLinkRemoteDataSource {
 
 final SupabaseClient _supabase;
final UserService _userService;
  

   AddLinkRemoteDataSource( this._supabase,  this._userService);



    @override
  Future<AddLinkModel> getAddLink({required String url ,required String title}) async {
    try {
      print("");
      final dataLink = {
       "user_id" :_userService.getUser!.id,
        "url": url,
        "title": title,
        
      };

      await _supabase.from('links').insert(dataLink);
      return AddLinkModel(
        id: 1,
        firstName: "Last Name",
        lastName: "First Name",
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
