import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../res/globals.dart';
import '../../res/helpers/ImageApiHelpers.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle textStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 1,
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: ImageAPIHelper.imageAPIHelper
                .getImage(name: 'background,wild animal'),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("Error:${snapshot.error}"),
                );
              } else if (snapshot.hasData) {
                Uint8List data = snapshot.data as Uint8List;
                return Container(
                  height: height * 0.38,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        const Color(0xffC19E82).withOpacity(0.6),
                        BlendMode.darken,
                      ),
                      image: MemoryImage(data),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 38),
                      const Spacer(),
                      Text(
                        "Welcome to\nAnimal biography ",
                        style: TextStyle(
                          fontSize: 48,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 280),
                width: width,
                height: height * 0.65,
                padding: const EdgeInsets.only(left: 26, right: 26),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                     ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[0]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 0.5,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.5), width: 5),
                          ),
                          child: const Text(
                            "Lion",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[1]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.5,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1505148230895-d9a785a555fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZWxlcGhhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 5)),
                          child: const Text(
                            "Elephant",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[2]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 0.5,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFiYml0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.5),
                              width: 5,
                            ),
                          ),
                          child: const Text(
                            "Rabbits",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[3]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.5,
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1594069033313-8920df9150b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG91cnNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 5),),
                          child: const Text(
                            "Horse",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[4]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.5,
                                image: NetworkImage(
                                  "https://plus.unsplash.com/premium_photo-1664302930577-bfa333b6ae86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 5),),
                          child: const Text(
                            "Bear",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("detail_page",
                              arguments: Globle.Animals[5]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.14,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.5,
                                image: NetworkImage(
                                  "https://plus.unsplash.com/premium_photo-1661897154120-5b27cd6a0bd5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c25ha2V8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 5),),
                          child: const Text(
                            "Snake",
                            style: TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
