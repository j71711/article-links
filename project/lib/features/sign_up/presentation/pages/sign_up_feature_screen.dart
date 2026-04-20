import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/extensions/context_extensions.dart';
import 'package:project/core/navigation/routers.dart';
import 'package:project/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:project/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:project/features/sign_up/presentation/widgets/circle_widget.dart';
import 'package:project/features/sign_up/presentation/widgets/input_widget.dart';
import 'package:project/features/sign_up/presentation/widgets/title_widget.dart';

class SignUpFeatureScreen extends HookWidget {
  const SignUpFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    final fullNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    const Color brandBlue = Color(0xFF4255C1);

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            context.go(Routes.signIn);
          } else if (state is SignUpErrorState) {
            context.showSnackBar(state.message, isError: true);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 1. TOP SECTION: Organic Gradient & Title
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF2C3E50), brandBlue, Color(0xFF6C5CE7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Background Blobs (matching image style)
                  Positioned(top: -40, right: -30, child: buildCircle(140, Colors.white10)),
                  Positioned(bottom: 20, left: -20, child: buildCircle(80, Colors.white12)),
                  
                  // Text Content
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Create a new account to begin",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  // Back Button
                  Positioned(
                    top: 50,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => context.pop(),
                      ),
                    ),
                  ),
                ],
              ),

              // 2. BOTTOM SECTION: White Form
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleWidget("Full Name"),
                      inputWidget(fullNameController, "Enter Full Name", Icons.person_outline),
                      
                      const SizedBox(height: 25),
                      titleWidget("Email"),
                      inputWidget(emailController, "Enter Email", Icons.email_outlined),
                      
                      const SizedBox(height: 25),
                      titleWidget("Password"),
                      inputWidget(passwordController, "••••••••", Icons.lock_outline, isPassword: true),
                      
                      const SizedBox(height: 40),

                      // Sign Up Button
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              cubit.getSignUpMethod(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                                fullName: fullNameController.text.trim(),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: brandBlue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Toggle to Sign In
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account? ", style: TextStyle(color: Colors.black54)),
                            GestureDetector(
                              onTap: () => context.go(Routes.signIn),
                              child: const Text(
                                "Sign In",
                                style: TextStyle(color: brandBlue, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
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

  // --- Helper Widgets to maintain the "Pretty" design ---

  


  Widget buildUnderlineField(TextEditingController controller, String hint, IconData icon, {bool isPassword = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, size: 20, color: const Color(0xFF4255C1)),
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF4255C1), width: 2)),
      ),
    );
  }
}