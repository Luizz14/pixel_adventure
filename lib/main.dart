import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel.adventure.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  runApp(const MaterialApp(home: MainMenu()));
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF211F30), // Cor de fundo do jogo
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Inicia o jogo quando o botão é pressionado
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => GameWidget(
                    game: kDebugMode ? PixelAdventure() : PixelAdventure(),
                  ),
                ),
              );
            },
            child: const Text('Começar Jogo'),
          ),
        ),
      ),
    );
  }
}
