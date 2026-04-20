import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/extensions/context_extensions.dart';
import 'package:project/features/add_link/presentation/cubit/add_link_cubit.dart';
import 'package:project/features/add_link/presentation/cubit/add_link_state.dart';
import 'package:project/features/add_link/presentation/widgets/add_link_widget.dart';

class AddLinkFeatureScreen extends HookWidget {
  const AddLinkFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddLinkCubit>();
    final titleController = useTextEditingController();
    final urlController = useTextEditingController();

    const Color brandBlue = Color(0xFF4255C1);

    return Scaffold(
      backgroundColor: brandBlue,
      body: BlocListener<AddLinkCubit, AddLinkState>(
        listener: (context, state) {
          switch (state) {
            case AddLinkSuccessState _:
              context.pop(true);
              break;
            case AddLinkErrorState _:
              context.showSnackBar(state.message, isError: true);
              break;
            default:
          }
        },
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => cubit.getAddLinkMethod(
                        url: urlController.text,
                        title: titleController.text,
                      ),
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const Text(
                      'Add New Resource',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 40,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Resource Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Using a safe internal method
                        buildInputField(
                          titleController,
                          "Title",
                          Icons.title_rounded,
                        ),
                        const SizedBox(height: 20),
                        buildInputField(
                          urlController,
                          "URL",
                          Icons.link_rounded,
                        ),

                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              final title = titleController.text;
                              final url = urlController.text;

                              if (title.isNotEmpty && url.isNotEmpty) {
                                cubit.getAddLinkMethod(url: url, title: title);
                              } else {
                                context.showSnackBar(
                                  "Please fill in all fields",
                                  isError: true,
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: brandBlue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Add Resource",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
