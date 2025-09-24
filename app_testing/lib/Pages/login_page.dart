import "package:app_testing/Pages/home_page.dart";
import "package:app_testing/Pages/main_page.dart";
import "package:app_testing/model/user.dart";
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  

  LoginPage({super.key,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userCtrl = TextEditingController();

  final passCtrl = TextEditingController();

  User? loggedInUser;

  void checkLogin() {
    final username = userCtrl.text;
    final password = passCtrl.text;

    final user = mockUsers.firstWhere(
      (u) => u.username == username && u.password == password,
      orElse: () => User('', '', '', ''),

    );
  setState(() => loggedInUser = user);
    
  }

  var username='';  
  //TextEditingController();
  var password='';  
  @override
  Widget build(BuildContext context) {
    return Scaffold(    //body:SinglechildScrollView( )
      //resizeToAvoidBottomInset: false,
      //appBar: AppBar(),
      //floatingActionButton: FloatingActionButton(onPressed: (){}),
      //drawer: Container(width: 100,height: 100,color: Colors.red,),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Column(
                  children: [
                    Text(
                      "Hello, Welcome back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "login to continue",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Spacer(),
                    //SizedBox(height: 50),
                    TextField(
                      onChanged: (value){
                        username=value;
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                      ),
                    ),
                   SizedBox(height: 10,),
                    TextField(
                      onChanged: (value){
                        password=value;
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          print("Forget Button is presed");
                        },
                        style: TextButton.styleFrom(foregroundColor: Colors.white),
                        child: Text("Forget password"),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          loggedInUser == null ? LoginPage() : HomePage();
                           final user =doLogin();
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context , Animation,secondaryAnimation){
                                return MainPage(user: user );

                          }));  //().pushNAme('/home')
                          print("Login is clicked");
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber
                      
                        ),
                        child: Text('Login'),
                      ),
                    ),
                    Spacer(),
                    //SizedBox(height: 70,),
                    Text("Or Login in with" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        print("Login with google");
                      }, style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white
            
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.jpeg", width: 22, height: 22),
                          SizedBox(width: 5,),
                          Text(
                            "Login with Google",
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
            
                    SizedBox(height: 12,),
                     ElevatedButton(
                      onPressed: () {
                        print("Login with Facebook");
                      }, style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white
            
                      ),
            
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/facebook.png", width: 22, height: 22),
                          SizedBox(width: 5,),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Don't have a account?",
                        style: TextStyle(color: Colors.white),
                        ),
                        TextButton(onPressed: (){
                        
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber
                        ),
                         child: Text(
                          "Sing up",
                          style: TextStyle(decoration: TextDecoration.underline)))
                    ],
                  ),
                  Spacer(),            
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

doLogin() async {
  final body={
    'username':username,
    'password':password
  };
  if(username=="m1" && password=='123'){
    //print("logined user1");
    print(body.values);
    

  }else{
    print("Not Login");
  }
}
}