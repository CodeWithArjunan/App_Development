import 'package:app_testing/Pages/home_page.dart';
import 'package:app_testing/Pages/profile_page.dart';
import 'package:app_testing/model/user.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  final User user;
  const MainPage({super.key, required this.user});
  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  //int currentIndex=0;
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages()[currentIndex.index],
     bottomNavigationBar: MyBottomNavigation(
      currentIndex: currentIndex.index,
       ontap: (value){
        setState(() {
          currentIndex=value;
        });
       }),
    //   BottomNavigationBar(items: [
    //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
    //   BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
    //   BottomNavigationBarItem(icon: Icon(Icons.message),label: "post"),
    //   BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),
    //   BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
    //  ],
    //  currentIndex: currentIndex,
    //  onTap: (index){
    //   setState(() {
    //     currentIndex=index;
    //   });
    //  },
    //  backgroundColor: Colors.amber,
    //  fixedColor: Colors.white,
    //  showSelectedLabels: false,
    //  showUnselectedLabels: false,
    //  type: BottomNavigationBarType.fixed,    
    //  )
    );
  }

   pages()=>[
    HomePage(),
    Center(
      child: Text("Favarites"),
    ),
     Center(
      child: Text("Add Post"),
    ),
     Center(
      child: Text("message"),
    ),
    ProfilePage(user: User("m5", '1234', 'killer', '@gamil.com')),
  ];

}
enum Menus{
  home,
  favarites,
  add,
  message,
  user
}

class MyBottomNavigation extends StatelessWidget{
  final int currentIndex;
  final ValueChanged<Menus> ontap;
  const MyBottomNavigation(
    {
    super.key,
     required this.currentIndex,
      required this.ontap}
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Row(
                children: [
                  Expanded(   //this Expanded is used to split the space equally 1/5
                    child: IconButton(onPressed: ()=>ontap(Menus.home),
                     icon: Icon(Icons.home)
                    ),
                  ),
                   Expanded(  //2/5
                    child: IconButton(onPressed:  ()=>ontap(Menus.favarites),
                     icon: Icon(Icons.favorite)
                    ),
                  ),
                  Spacer(),  //Spacer()--split one of the place 3/5
                  Expanded( //4/5
                    child: IconButton(onPressed:  ()=>ontap(Menus.message),
                     icon: Icon(Icons.message)
                    ),
                  ),
                   Expanded(  //5/5
                    child: IconButton(onPressed:  ()=>ontap(Menus.user),
                     icon: Icon(Icons.person)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -2,
            child: GestureDetector(
              onTap: (){
                ontap(Menus.add);
              },
              child: Container(
                width: 64,
                height: 64, 
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  ),
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
