import 'package:final_project/features/layout/view/screens/layout_screen.dart';
import 'package:final_project/features/login/view/screens/help_screen.dart';
import 'package:final_project/features/login/view/screens/candidates_screen.dart';
import 'package:final_project/features/login/view/screens/home_screen.dart';
import 'package:final_project/features/auth/login/login_screen.dart';
import 'package:final_project/features/login/view/screens/vote_details_screen.dart';
import 'package:final_project/features/login/view/screens/vote_result_screen.dart';
import 'package:final_project/features/on_boading/on_bording_screen.dart';
import 'package:final_project/features/auth/register/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helper/cache_helper.dart';
import 'features/login/manager/model/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initCacheHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: OnBordingScreen()

      ),
    );
  }
}
