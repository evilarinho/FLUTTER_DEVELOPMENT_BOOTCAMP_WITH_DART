import 'package:flutter/material.dart';

/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage(
        'assets/images/diamond.png'); //<- Creates an object that fetches an image.
    var image = Image(
        image: assetsImage,
        fit: BoxFit.cover); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Climb your mountain!"),
          backgroundColor: Colors
              .amber[600], //<- background color to combine with the picture :-)
        ),
        body: Container(child: image), //<- place where the image appears
      ),
    );
  }
}
*/

/*
void main() => runApp(const MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image from assets"),
        ),
        body: Builder(builder: (context) {
          return Image.asset('assets/images/diamond.png');
        }), //   <--- image here
      ),
    );
  }
}
*/

// adaptação de https://docs.flutter.dev/cookbook/images/network-image
// atualização para o null safety
///*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'I Am Rich';

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Image.asset('assets/images/diamond.png', width: 300, height: 100),
      ),
    );
  }
}
//*/

// apresentou erro em tempo de execução devido a desatualização do curso para o null safety
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Image(
          image: NetworkImage(
              'https://www.google.com/imgres?imgurl=https%3A%2F%2Fp16-amd-va.tiktokcdn.com%2Fimg%2Ftos-useast2a-v-2774%2Fcd42670b338e4c15b6ae7083686dc183~c5_720x720.jpeg&imgrefurl=https%3A%2F%2Fwww.tiktok.com%2Ftag%2Fquimbanda%25F0%259F%2592%2583%25F0%259F%259A%25AC%25E2%259C%25A8%25E2%2599%25A5%25EF%25B8%258F%25F0%259F%2596%25A4&tbnid=QEjXBmQ7mgxoeM&vet=12ahUKEwj3udWWrNP1AhVQtpUCHba4BAYQMygAegQIARAi..i&docid=bXqghvNnq32U5M&w=720&h=720&itg=1&q=nebulosa%20de%20orion%20vista%20da%20terra&ved=2ahUKEwj3udWWrNP1AhVQtpUCHba4BAYQMygAegQIARAi'),
        ),
      ),
    ),
  );
}
*/