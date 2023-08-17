
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
      SnackBar(content: Text(message),backgroundColor: Colors.green,)
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("SAZZADUL KOBIR"),
        backgroundColor:Colors.green,
      ),
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.green,
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
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("sazzadul kobir",style: TextStyle(fontSize: 20),),
                  accountEmail: Text("The Great kazi"),
                  currentAccountPicture: Image.network("https://cdn-icons-png.flaticon.com/128/2202/2202112.png"),

                )
            ),

             ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
                onTap: (){
                  Mysnackbar("Home",context );
                  //if user tuch a any item drawer will close
                  Navigator.pop(context);
                },
              ),
            ListTile(
              title: Text("phone"),
              leading: Icon(Icons.phone),
              onTap: (){
                Mysnackbar("Phone",context );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("contact"),
              leading: Icon(Icons.contact_page),
              onTap: (){
                Mysnackbar("contact",context );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: (){
                Mysnackbar("Email",context );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


    );
  }

}