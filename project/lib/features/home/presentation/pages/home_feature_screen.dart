import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/navigation/routers.dart';
import 'package:fan_floating_menu/fan_floating_menu.dart';
import 'package:project/features/home/presentation/cubit/home_cubit.dart';
import 'package:project/features/home/presentation/cubit/home_state.dart';
import 'package:project/features/home/presentation/widgets/home_widget.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      floatingActionButton: FanFloatingMenu(
        menuItems: [
          FanMenuItem(
            onTap: () {
              context.push(Routes.addLink).then((value) {
                if (value == true) {
                  cubit.getHomeMethod();
                }
              });
            },
            icon: Icons.send_rounded,
            title: 'new post',
          ),
        ],
      ),

      floatingActionButtonLocation: .centerFloat,
     body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccessState) {
              return ListView.builder(
                itemCount: state.links.length,
                padding: EdgeInsets.all(9),

                itemBuilder: (context, index) => HomeWidget(),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}

