import 'package:flutter/material.dart';
import 'package:readifyy/register_page.dart';
import 'login_page.dart'; // Importujemy plik z ekranami logowania i rejestracji

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(), // Ustawiamy StartPage jako ekran startowy
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/READIFY.png'), // Ścieżka do obrazu
            fit: BoxFit.cover, // Dopasowanie obrazu do ekranu
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Ustawia elementy na dole
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF526549), // Kolor szesnastkowy
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      minimumSize: Size.fromHeight(60), // Ustawia minimalny rozmiar przycisku
                    ),
                    child: Text(
                      'Zaloguj się',
                      style: TextStyle(color: Colors.white), // biały kolor tekstu
                    ),
                  ),
                  SizedBox(height: 10), // Odstęp między przyciskami
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: BorderSide(color: Colors.grey), // Granica wokół przycisku
                      minimumSize: Size.fromHeight(60), // Ustawia minimalny rozmiar przycisku
                    ),
                    child: Text(
                      'Zarejestruj się',
                      style: TextStyle(color: Colors.black), // Czarny kolor tekstu
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




