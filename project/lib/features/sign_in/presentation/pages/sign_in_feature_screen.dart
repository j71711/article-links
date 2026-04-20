import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/extensions/context_extensions.dart';
import 'package:project/core/navigation/routers.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_state.dart';
import 'package:project/features/sign_in/presentation/widgets/input_widget.dart';
import 'package:project/features/sign_in/presentation/widgets/label_widget.dart';

class SignInFeatureScreen extends HookWidget {
  const SignInFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignInCubit>();
    final emailController = useTextEditingController(text: "Jalnar@gmail.com");
    final passwordController = useTextEditingController(text: "123456789");
    final formKey = useMemoized(() => GlobalKey<FormState>());
    const Color brandBlue = Color(0xFF4255C1);

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<SignInCubit, SignInState>(
        listener: (context, state) {
          if (state is SignInSuccessState) {
            context.go(Routes.home);
          } else if (state is SignInErrorState) {
            context.showSnackBar(state.message , isError: true);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
  
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF2C3E50), brandBlue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                
                  Positioned(
                    top: -50,
                    right: -50,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white.withValues(alpha: .1),
                    ),
                  ),
                  
                  Positioned(
                    bottom: 20,
                    left: -30,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white.withValues(alpha:0.05),
                    ),
                  ),
                
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildLabel("Email"),
                      const SizedBox(height: 8),
                      buildTextField(
                        controller: emailController,
                        hint: "jalnar@example.com",
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 25),
                      buildLabel("Password"),
                      const SizedBox(height: 8),
                      buildTextField(
                        controller: passwordController,
                        hint: "••••••••",
                        icon: Icons.lock_outline,
                        isPassword: true,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(color: brandBlue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      
                 
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              cubit.getSignInMethod(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: brandBlue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 30),
                   
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () => context.push(Routes.signUp),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(color: brandBlue, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  

}