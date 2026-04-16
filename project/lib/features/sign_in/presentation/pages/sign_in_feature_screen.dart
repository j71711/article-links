import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/extensions/context_extensions.dart';
import 'package:project/core/navigation/routers.dart';
import 'package:project/core/widgets/card_widget.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_state.dart';
import 'package:project/features/sign_up/presentation/cubit/sign_up_state.dart';

class SignInFeatureScreen extends HookWidget {
  const SignInFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignInCubit>();
    final emailController = useTextEditingController(text: "Jalnar@gmail.com");
    final passwordController = useTextEditingController(text: "123456789");
    final keyField = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 248, 252),
      appBar: AppBar(title: const Text('SignUp Feature Screen')),
      body: BlocListener<SignInCubit, SignInState>(
        listener: (context, state) {
          switch (state) {
            case SignInSuccessState _:
    
              context.go(Routes.home);
              print("last");
              break;
            case SignInErrorState _:
              context.showSnackBar(state.message, isError: true);
              break;
            default:
          }
        },
        child: SafeArea(
          child: Card(
            key: keyField,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  CardWidget(
                    controller: emailController,
                    title: " email",
                    // validator: Validators.validateEmail,
                  ),

                  SizedBox(height: 18),
                  CardWidget(
                    controller: passwordController,
                    title: "password",
                    // validator: Validators.validatePassword,
                  ),

                  SizedBox(height: 28),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        
                        cubit.getSignInMethod(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 1, 117),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
