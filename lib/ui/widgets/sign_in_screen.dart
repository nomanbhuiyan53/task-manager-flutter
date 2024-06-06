import 'package:flutter/material.dart';
import 'package:task_management/ui/utility/app_colors.dart';
import 'package:task_management/ui/widgets/background_widget.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SignInScreen>{
  final TextEditingController _textEmailController = TextEditingController();
  final TextEditingController _textPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: BackgroundWidget(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Text('Get Started with',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: _textEmailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Please Enter Your Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      controller: _textPasswordController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Please Enter Your Password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: (){
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.themeColor,
                          foregroundColor: Colors.white,
                        ),
                        child: const Center(child: Icon(Icons.arrow_circle_right_outlined,size: 32,))),
                    const SizedBox(height: 36,),
                    Center(child: TextButton(onPressed: (){}, child: const Text('Forget Password ?',style: TextStyle(color: Colors.grey),))),

                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _textEmailController.dispose();
    _textPasswordController.dispose();
  }

}