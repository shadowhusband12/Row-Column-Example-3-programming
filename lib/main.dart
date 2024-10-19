import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item For Sale',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item For Sale"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 308,
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://codesundar.com/wp-content/uploads/2020/08/78494341_2774884842574595_7784880823911579648_n-300x300.jpg"),
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("SUNDARAVEL M"),
                            Text("5 mins ago"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: const [Icon(Icons.thumb_up), Text("Like")],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [Icon(Icons.comment), Text("Comment")],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [Icon(Icons.share), Text("Share")],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
