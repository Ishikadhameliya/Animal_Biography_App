import 'package:flutter/material.dart';

class Details_Page extends StatefulWidget {
  const Details_Page({Key? key}) : super(key: key);

  @override
  State<Details_Page> createState() => _Details_PageState();
}

class _Details_PageState extends State<Details_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {
             setState(() {
               Navigator.pop(context);
             });
            },
          )),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 320),
              height: 520,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 5,),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "${res["name"]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),),
                  const SizedBox(height: 10,),
                  Container(
                      height: 230,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "${res["des"]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 23),
                      )),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("${res["image"]}"),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
