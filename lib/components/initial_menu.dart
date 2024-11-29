import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialMenu extends StatefulWidget {
  const InitialMenu({super.key});

  @override
  State<InitialMenu> createState() => _InitialMenuState();
}

class _InitialMenuState extends State<InitialMenu> {
  bool _showMenu = true;

  @override
  Widget build(BuildContext context) {
    return _showMenu
        ? AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fruit Adventure',
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'VT323',
                        ),
                      ),
                      const SizedBox(height: 56),
                      GestureDetector(
                        onTap: () {
                          setState(() => _showMenu = false);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7CE98),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Text(
                            'Começar Jogo',
                            style: GoogleFonts.vt323(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3B3B3B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : Container();
  }
}
