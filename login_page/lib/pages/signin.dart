import 'package:flutter/material.dart';
import 'package:login_page/pages/onboarding.dart';
import 'package:login_page/pages/signup.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffb51837), Color(0xff661c3a), Color(0xff301939)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
              children: [
                Row(
                  children: [
                    
                    Text(
                "Hello\nSign in!",
                style: TextStyle(color: Colors.white, fontSize: 40,),
                
              ),
              Spacer(),
              
              GestureDetector(
                onTap: (){
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Onboarding(),
                                  ),
                                );
                },
                child: Text("Home",style: TextStyle(color: Colors.blue,fontSize: 20 ),
                      textAlign: TextAlign.right,),
              ),

                  ],
                ),
                
              ]
              
              ),
              
             
              
            
            ),
            SizedBox(height: 40),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: Color(0xffb51837), fontSize: 20),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the Email",
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Password",
                      style: TextStyle(color: Color(0xffb51837), fontSize: 20),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the Password",
                        prefixIcon: Icon(Icons.password_outlined),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 6, 67, 116),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      
                    ),
                    SizedBox(height: 60),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffb51837),
                                Color(0xff661c3a),
                                Color(0xff301939),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                         
                   child: Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                       
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              "Don't have a account?",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                               
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                          },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 6, 67, 116),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                              ],
                            )
                          ],
                        )
                        
                      ],
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
