import 'package:flutter/material.dart';

import 'package:desafio_03/Pages/home_page.dart';

import 'class_geostate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var state = GeoState.ball();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desafio 03 do Botão Flutuante"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            state = state.type == GeoType.circle
                ? GeoState.square()
                : GeoState.ball();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: AnimatedAlign(
            alignment: state.type == GeoType.circle
                ? Alignment.bottomRight
                : Alignment.topCenter,
            duration: Duration(seconds: 2),
            curve: Curves.ease,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(state.radius),
                color: Colors.blue,
              ),
              width: state.squarewidth,
              height: state.squareheight,
            ),
          ),
        ),
      ),
    );
  }
}
