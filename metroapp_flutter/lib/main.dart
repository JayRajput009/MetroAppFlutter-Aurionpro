import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metroapp_flutter/features/authentication/bloc/authentication_bloc.dart';
import 'package:metroapp_flutter/features/authentication/ui/screens/createaccountscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;
    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => AuthenticationBloc())],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CreateAccountScreen(),
          ),
        );
      },
    );
  }
}
