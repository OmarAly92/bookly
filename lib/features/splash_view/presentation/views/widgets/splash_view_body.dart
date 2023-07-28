import 'package:bookly/core/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    slidingText();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logoImage, filterQuality: FilterQuality.high),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }
  void slidingText() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1.5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

}
