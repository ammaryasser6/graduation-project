import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:final_project/features/auth/register/logic/register_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Dio _dio = Dio();

  void register({
    required String email,
    required String password,
    required String name,
    required String nationalid,
    required String dateofbirth,
  }) async {
    emit(Registerloading());
    try {
      print(image64);
      final response = await _dio.post(
        "http://egelectionapi.runasp.net/api/Auth/register",
        data:

        {
          "email": email,
          "password": password,
          "name": name,
          "nationalId": nationalid,
          "dateOfBirth": "2002-06-09T22:06:30.178Z",
          "electionType": 0,
          "nationalIdPhoto": image64,
          "nationalIdPhotoDataType": "string",
          "selfiePhoto": image64,
          "selfiePhotoDataType": "string",
          "provinceId": 1,
          "role": "Voter"
        },
      );
      final user = RegisterModel.fromJson(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // CacheHelper.saveData(key: MyCashKey.token, value: user.token);
        // print("token :: ${ CacheHelper.getData(key: MyCashKey.token)}");
        emit(Registersuccess());
      } else if (response.statusCode == 401) {
        emit(Registererror(user.message ?? "Invalid Error"));
      } else {
        emit(Registererror(user.message ?? "Invalid Error"));
      }
    } on DioException catch (e) {
      print("error login $e");
      print('Response data: ${e.response?.data}');
      if (e.response?.statusCode == 401) {
        emit(Registererror("Email Or Password Invalid "));
      } else {
        emit(Registererror(e.message ?? ''));
      }
    } catch (e) {
      emit(Registererror(e.toString()));
    }
  }

  Future<String> convertXFileToBase64(XFile file) async {
    final bytes = await file.readAsBytes();
    return base64Encode(bytes);
  }

  final ImagePicker imagePicker = ImagePicker();
  String image64 = "";

  void pickImageFromGallery() async {
    var imagefile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (imagefile != null) {
      image64 = await convertXFileToBase64(imagefile);
      print("image4666 $image64");
    }
  }

  void pickImageFromCamera() async {
    var imagefile = await imagePicker.pickImage(source: ImageSource.camera);
    if (imagefile != null) {
      image64 = await convertXFileToBase64(imagefile);
    }
  }
}
