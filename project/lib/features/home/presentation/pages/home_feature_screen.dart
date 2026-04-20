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


    return Scaffold(
      backgroundColor: const Color(0xFF4255C1),
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 251, 251),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),

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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
                    child: Text(
                      'Article',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Text(
                      'Select Resource',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        if (state is HomeSuccessState) {
                          return ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            itemCount: state.links.length,
                            itemBuilder: (context, index) {
                              final linkData = state.links[index];
                              return GestureDetector(
                                onTap: () {
                                  final String? urlString = linkData.url;
                                  if (urlString != null &&
                                      urlString.isNotEmpty) {
                                    _launchUrl(Uri.parse(urlString));
                                  }
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 14,
                                  ), 
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 22,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFF4255C1,
                                    ), 
                                    borderRadius: BorderRadius.circular(
                                      16,
                                    ), 
                                    
                                  ),
                                  child: Row(
                                    children: [
                                    
                                      const Icon(
                                        Icons.link_rounded,
                                        color: Colors.white70,
                                        size: 22,
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Text(
                                 
                                          linkData.title ,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white54,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),

                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FanFloatingMenu(
        toggleButtonColor: const Color(0xFF4255C1),
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
            menuItemColor: const Color.fromARGB(255, 255, 255, 255),
            menuItemIconColor: const Color(0xFF4255C1),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future<void> _launchUrl(_url) async {
    if (await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
