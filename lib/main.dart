import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: first());
  }
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  bool Visible=true;
  final s=TextEditingController();
  String r="hello";
  String g="";

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Column(
                  children: [
                    Text("Flutter"),
                    Image(
                        height: 100,
                        width: 100,
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2023/08/07/19/37/rose-8175830_640.jpg")),

                  ],
                ))
           , ListTile(
              leading: Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/08/07/19/37/rose-8175830_640.jpg"),
              ),
              title: Text("GANAPATHI"),tileColor: Colors.cyanAccent, ),
          Divider(height: 5,color: Colors.black,),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/08/07/19/37/rose-8175830_640.jpg"),
              ),
              title: Text("GANAPATHI"),tileColor: Colors.cyanAccent, ),
            Divider(height: 5,color: Colors.black,),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/08/07/19/37/rose-8175830_640.jpg"),
              ),
              title: Text("GANAPATHI"),tileColor: Colors.cyanAccent, ),
            Divider(height: 5,color: Colors.black)],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [TextField(controller: s,obscuringCharacter: "*",obscureText: Visible,
            decoration: InputDecoration(hintText: "Password",suffixIconColor:Colors.amber ,
              suffixIcon: IconButton(icon:
            Icon(Icons.remove_red_eye),
              onPressed: () => setState(() {
                Visible = !Visible;
              }),),border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),),
          ),Divider(height: 40,),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {
              if(s.text==r){
                g="welcome";
              }
              else g="not ready";
              setState(() {
            });
    },),
            Text(g,style: TextStyle(fontSize: 20,color: Colors.yellowAccent),),
            Container(
              height: 60,
              width: 400,
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text(
                  "Raja",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("kotha"),
                //trailing: ButtonBar(buttonAlignedDropdown: false),
                tileColor: Colors.blue,
              ),
            ),
            Divider(
              height: 5,
              thickness: 30,
            ),
            ListTile(
              title: Text("Alright"),
              subtitle: Text("Nycee"),
              tileColor: Colors.blue,
            ),
            Divider(
              height: 5,
              thickness: 30,
            ),
            ListTile(
              title: Text("Hello"),

              tileColor: Colors.lightGreenAccent,
            )
         ,Divider(height: 50,),Stack(alignment: Alignment(0,2),children: [Container(height: 200,width: 340,color: Colors.green,),Container(height: 140,width: 300,color: Colors.yellow,),
            InkWell(onTap: (){},child: Container(height: 120,width: 200,color: Colors.green,child: Image(fit:BoxFit.fill,image: AssetImage("assets/gan2.jpg"),),))],) ],
        ),
      ),
    );
  }
}
