import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../../../core/widgets/no_internet_connection_widget.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OfflineBuilder(
        connectivityBuilder: (context, connectivity, child) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            return const HomeViewBody();
          } else {
            return const NoInternetConnectionWidget();
          }
        },
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
