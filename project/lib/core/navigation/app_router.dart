import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/home/presentation/pages/home_feature_screen.dart';
import 'package:project/features/home/presentation/cubit/home_cubit.dart';
import 'package:project/features/add_link/presentation/pages/add_link_feature_screen.dart';
import 'package:project/features/add_link/presentation/cubit/add_link_cubit.dart';
import 'package:project/features/sign_up/presentation/pages/sign_up_feature_screen.dart';
import 'package:project/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:project/features/sign_in/presentation/pages/sign_in_feature_screen.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_cubit.dart';






class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.signUp,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    

  GoRoute(
    path: Routes.home,
    builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(GetIt.I.get()),
          child: const HomeFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.addLink,
    builder: (context, state) => BlocProvider(
          create: (context) => AddLinkCubit(GetIt.I.get()),
          child: const AddLinkFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.signUp,
    builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(GetIt.I.get()),
          child: const SignUpFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.signIn,
    builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(GetIt.I.get()),
          child: const SignInFeatureScreen(),
        ),
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
