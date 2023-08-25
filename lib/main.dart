import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF010101),
        brightness: Brightness.dark,
      ),
      home: const Scaffold(
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 41),
            child: EncavezadoRow()
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: (Text("Who's Watching?", style: TextStyle(fontSize: 18)))),
          Perfiles(),
          Perfiles2(),
          Perfiles3()
        ] //Deja el espacio del knock del dispositivo móvil
                )),
      ),
    );
  }
}

class EncavezadoRow extends StatelessWidget {
  const EncavezadoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 108,),
        Encabezado_netflix(),
        SizedBox(width: 56,),
        lapiz(),
      ],
    );
  }
}

// ignore: camel_case_types
class lapiz extends StatelessWidget {
  const lapiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
width: 21,
height: 19,
decoration: const BoxDecoration(
image: DecorationImage(
image: AssetImage("assets/n5 1.png"),
fit: BoxFit.cover,
),
),
);
  }
}

class Perfiles extends StatelessWidget {
  const Perfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25, left: 76),
          child: Column(
            children: [
              yellowCardColumn(
                img: "assets/n2 4.png",
              ),
              SizedBox(height: 5),
              Text(
                "Drashti",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25, left: 39),
          child: Column(
            children: [
              yellowCardColumn(
                img: "assets/n2 5.png",
              ),
              SizedBox(height: 5),
              Text(
                "Bhavesh",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        SizedBox(
          width: 0,
        )
      ],
    );
  }
}

class Perfiles2 extends StatelessWidget {
  const Perfiles2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25, left: 76),
          child: Column(
            children: [
              yellowCardColumn(
                img: "assets/n3 1.png",
              ),
              SizedBox(height: 5),
              Text(
                "Aditi",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25, left: 39),
          child: Column(
            children: [
              yellowCardColumn(
                img: "assets/n2 2.png",
              ),
              SizedBox(height: 5),
              Text(
                "Raghav",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        SizedBox(
          width: 0,
        )
      ],
    );
  }
}

class Perfiles3 extends StatelessWidget {
  const Perfiles3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25, left: 76),
          child: Column(
            children: [
              yellowCardColumn(
                img: "assets/n2 1.png",
              ),
              SizedBox(height: 5),
              Text(
                "Kavya",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        SizedBox(
          width: 0,
        )
      ],
    );
  }
}

class Encabezado_netflix extends StatelessWidget {
  const Encabezado_netflix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 31,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/n1 2.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class yellowCardColumn extends StatelessWidget {
  final String img;

  const yellowCardColumn({
    required this.img,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hi, Michael 👋",
            style: TextStyle(fontSize: 16),
          ),
        ]);
  }
}

class profilePicture extends StatelessWidget {
  const profilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage("https://via.placeholder.com/40x40"),
          fit: BoxFit.fill,
        ),
        shape: OvalBorder(),
      ),
    );
  }
}

class esferaMenu extends StatelessWidget {
  const esferaMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFF171717),
        shape: OvalBorder(
          side: BorderSide(
            width: 0.50,
            color: Colors.white.withOpacity(0.10000000149011612),
          ),
        ),
      ),
    );
  }
}
