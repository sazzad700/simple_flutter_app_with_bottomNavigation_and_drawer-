import 'package:flutter/material.dart';

main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(home:HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("SAZZADUL KOBIR"),),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1,
       items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
       ],
       onTap: (int index){
            if(index==1){
              Mysnackbar("this is contact", context);
            }else if(index==0){
              Mysnackbar("this is home", context);
            }else{
              Mysnackbar("this is profile", context);
            }
       },
     ) ,
      drawer: Drawer(
        child:  ListView(
          children:const [
            DrawerHeader(child: Text("Drawer Header")),

            ListTile(title: Text("home")),
            ListTile(title: Text("phone")),
            ListTile(title: Text("contact")),
            ListTile(title: Text("profile")),
          ],
        ),
      ),


    );
  }

}