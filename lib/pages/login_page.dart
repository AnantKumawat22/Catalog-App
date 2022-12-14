import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 70.0,),
              Image.asset("assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0,),
               Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username"
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username can't be Empty.";
                    }
                    return null;
                  },
                ),
                
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username can't be Empty.";
                    }
                    else if(value.length < 6){
                      return "Password length should be atleast 6.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40.0,),
              
                Material(
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap:  () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton ? const Icon(Icons.done, color: Colors.white) : const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                        
                    ),
                  ),
                ),
              ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}