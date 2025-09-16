// import 'package:e_commerce/features/auth/data/model/user_model.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// abstract interface class AuthDataSource {
//   Future<String> signUp({required UserModel userModel});
// }

// class AuthRemoteDataSourceImpl implements AuthDataSource {
//   final SupabaseClient _supabaseClient;

//   AuthRemoteDataSourceImpl({required SupabaseClient supabaseClient})
//     : _supabaseClient = supabaseClient;

//   @override
//   Future<String> signUp({required UserModel userModel}) {
//     try {
//       _supabaseClient.auth.signUp(
//         email: userModel.email,
//         password: userModel.password,
//         data: {}
//       );
//     } catch (e) {}
//   }
// }
