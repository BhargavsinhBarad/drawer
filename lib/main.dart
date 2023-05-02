import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: screen(),
    ),
  );
}

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DRAWER",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => custom(),
              ),
            );
          },
          child: Text(
            "BHARGAVSINH",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bhargavgav"),
              accountEmail: Text("bhargavsinh@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/e9/36/ab/e936ab240156c33be7974c2c36188bdf.jpg"),
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("Home"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("About"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("Settings"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("Index"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("Trase"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("Help"),
            ),
          ],
        ),
      ),
    );
  }
}

class custom extends StatefulWidget {
  const custom({Key? key}) : super(key: key);

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "BHARGAVSINH BARAD",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 9),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/e9/36/ab/e936ab240156c33be7974c2c36188bdf.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bhargavsinh Barad",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("bhargavsinh@gmail.com"),
                        Text(
                          "8485xxxxxx",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("🏠 Home"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("ℹ️ About"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("⚙️ Settings"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("📇 Index"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("🗑️ Trase"),
            ),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Text("❓Help"),
            ),
          ],
        ),
      ),
    );
  }
}
