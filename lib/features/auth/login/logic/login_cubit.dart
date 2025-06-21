import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:final_project/features/auth/login/logic/model/login_model.dart';
import 'package:meta/meta.dart';

import '../../../../core/helper/Cache_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Dio _dio = Dio();

  void login({required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      final response = await _dio.post(
        "http://egelectionapi.runasp.net/api/Auth/login",
        data: {
          "email": email,
          "password": password,
        },
      );
      final user = LoginModel.fromJson(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // CacheHelper.saveData(key: MyCashKey.token, value: user.token);
        // print("token :: ${ CacheHelper.getData(key: MyCashKey.token)}");
        print("Response Login ${response.data}");
        emit(LoginSuccessState(user));
      } else if (response.statusCode == 401) {
        emit(LoginErrorState(user.message ?? "Invalid Error"));
      } else {
        emit(LoginErrorState(user.message ?? "Invalid Error"));
      }
    } on DioException catch (e) {
      print("error login $e");
      if (e.response?.statusCode == 401) {
        emit(LoginErrorState("Email Or Password Invalid "));
      } else {
        emit(LoginErrorState(e.message ?? ''));
      }
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }
}
