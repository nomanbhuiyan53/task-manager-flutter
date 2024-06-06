import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/ui/utility/assets_path.dart';
import 'package:task_management/ui/widgets/background_widget.dart';
import 'package:task_management/ui/widgets/sign_in_screen.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }
  Future <void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if(mounted) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInScreen(),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
            child: SvgPicture.asset(AssetPaths.appLogo,width: 120,)
        ),
      ),
    );
  }

}