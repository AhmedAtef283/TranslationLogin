import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectlogin/modules/registerScreen.dart';

import '../Component/defaults.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var emailAddress = TextEditingController();
    var Password =TextEditingController();
    var formKey = GlobalKey<FormState>();
    bool isPasswordShow = true;




    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Login Screen'.tr)),
          actions: [
            IconButton(onPressed: (){
              if (Get.locale?.languageCode=='Ar')
                {
                  Get.updateLocale(Locale('ENG'));

                }
              else {
                Get.updateLocale(Locale('Ar'));


              }

            }, icon: Text('تغيير'))
          ],
        ),
        body: Form(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image(
                      image: AssetImage(
                          'images/tablet-login-concept-illustration_114360-7963.webp'),
                      height: MediaQuery.of(context).size.height*.4 ,
                  width: MediaQuery.of(context).size.width),
                   Text('LOGIN'.tr , style: TextStyle(
                     fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue
                   )),
                  SizedBox(height: 10.0),
                   buildTextFormField(
                      controller:emailAddress,
                      type: TextInputType.emailAddress,
                      label: 'Email Address'.tr,

                      preffixicon: Icon(Icons.email),
                      prefix: null,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'Email must not be empty';
                        }
                      }


                      ),


                  SizedBox(height:5.0),


                     buildTextFormField(
                      preffixicon:Icon(Icons.lock_rounded ),
                      controller:Password,
                      type: TextInputType.number,
                      label: 'Password'.tr,
                      validate: (String value){
                        if(value.isEmpty){
                          return 'Password must not be empty';}

                      },

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t Have Account ?'.tr , style: TextStyle(
                        color: Colors.blue ,fontWeight: FontWeight.bold,

                      )),
                      SizedBox(width: 5.0,),
                      TextButton(onPressed: (){
                        Get.off(RegisterScreen());
                      }, child: Text('Register Now'.tr , style: TextStyle(
                        color: Colors.black ,fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),)),
                    ],
                  ),

                  Container(decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                  ),
                    height: 50,
                    width: double.infinity ,
                    child: MaterialButton(
                      onPressed: (){
                        if (formKey.currentState!.validate()){
                          print(Password.text);
                          print(emailAddress.text);

                        }
                      } ,

                      child: Text('Login'.tr ,style: TextStyle(
                        color: Colors.white ,fontSize: 13,
                        fontWeight: FontWeight.bold),),
                      color: Colors.blue,


                    ),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
