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

    return Scaffold(
      appBar: AppBar(title: const Text('AddPost Feature Screen')),
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AddLinkWidget(title: "title", controller: titleController, ),
          AddLinkWidget(title: "url", controller: urlController, ),
               ElevatedButton(
                      onPressed: () {
                        
                       cubit.getAddLinkMethod(url: urlController.text, title:  titleController.text);
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
            ],
          ),
        ),
      ),
    );
  }
}
