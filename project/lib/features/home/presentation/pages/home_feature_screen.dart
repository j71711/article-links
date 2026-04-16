import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/navigation/routers.dart';
import 'package:fan_floating_menu/fan_floating_menu.dart';
import 'package:project/features/home/presentation/cubit/home_cubit.dart';
import 'package:project/features/home/presentation/cubit/home_state.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    late Uri _url;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      floatingActionButton: Expanded(
        child: FanFloatingMenu(
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
      ),

      floatingActionButtonLocation: .centerFloat,
      body: Expanded(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccessState) {
              return ListView.builder(
                itemCount: state.links.length,
                padding: EdgeInsets.all(9),
        
                itemBuilder: (context, index) => ListTile(
                  title: Text(state.links[index].title),
                  trailing: ElevatedButton(
                    onPressed: () {
                _url  = Uri.parse(state.links[index].url);
                _launchUrl(_url);
                    },
                    child: Text(state.links[index].url),
                  ),
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}