import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'VideoPlayerScreen.dart';

void main() {
  runApp(const MyApp());
}

// App base
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Tree Hotels VOD',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B1D3A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0B1D3A),
        ),
        cardColor: Colors.blueGrey[800],
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void _login() {
    if (userController.text.isNotEmpty && passController.text.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>  HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1D3A),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), 
                child: Image.asset(
                  "assets/images/images.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover, 
                ),
              ),
              const SizedBox(height: 30),
              const Text("Blue Tree Hotels", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                controller: userController,
                decoration: const InputDecoration(labelText: "Usuário"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Senha"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final List<Map<String, dynamic>> categorias = [
    {
      "titulo": "Blue Tree Premium Alphaville",
      "subcategorias": [
        {
          "nome": "Apartamentos",
          "imagem": "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
          ]
        },
        {
          "nome": "Eventos",
          "imagem": "https://cdn.pixabay.com/photo/2017/08/07/23/48/events-2609305_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Galeria",
          "imagem": "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "O que fazer",
          "imagem": "https://cdn.pixabay.com/photo/2017/06/09/09/30/swimming-pool-2386261_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Promoções",
          "imagem": "https://cdn.pixabay.com/photo/2021/12/18/06/13/hotel-6878054_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Vídeo Institucional",
          "imagem": "https://cdn.pixabay.com/photo/2019/05/28/00/15/indoors-4234071_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
      ]
    },

    {
      "titulo": "Blue Tree Therma de Lins",
      "subcategorias": [
        {
          "nome": "Quartos",
          "imagem": "https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664223_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Passeios",
          "imagem": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Restaurante",
          "imagem": "https://cdn.pixabay.com/photo/2016/03/05/19/02/food-1238246_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Vídeo Institucional",
          "imagem": "https://cdn.pixabay.com/photo/2019/05/28/00/15/indoors-4234071_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
      ]
    },

    {
      "titulo": "Blue Tree Premium Paulista",
      "subcategorias": [
        {
          "nome": "Apartamentos",
          "imagem": "https://cdn.pixabay.com/photo/2018/06/14/21/15/bedroom-3475656_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
          ]
        },
        {
          "nome": "Eventos",
          "imagem": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDfgqpV8S8hfwaVYdDAXIhl4LL5WDCZCQi_g&s",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Galeria",
          "imagem": "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "O que fazer",
          "imagem": "https://cdn.pixabay.com/photo/2017/06/09/09/30/swimming-pool-2386261_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Promoções",
          "imagem": "https://cdn.pixabay.com/photo/2021/12/18/06/13/hotel-6878054_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Vídeo Institucional",
          "imagem": "https://cdn.pixabay.com/photo/2019/05/28/00/15/indoors-4234071_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
      ]
    },

    {
      "titulo": "Blue Tree Towers Millenium",
      "subcategorias": [
        {
          "nome": "Apartamentos",
          "imagem": "https://cdn.pixabay.com/photo/2013/03/23/04/29/master-bedroom-96086_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
          ]
        },
        {
          "nome": "Eventos",
          "imagem": "https://cdn.pixabay.com/photo/2017/08/07/23/48/events-2609305_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Galeria",
          "imagem": "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "O que fazer",
          "imagem": "https://cdn.pixabay.com/photo/2017/06/09/09/30/swimming-pool-2386261_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Promoções",
          "imagem": "https://cdn.pixabay.com/photo/2021/12/18/06/13/hotel-6878054_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Vídeo Institucional",
          "imagem": "https://cdn.pixabay.com/photo/2019/05/28/00/15/indoors-4234071_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
      ]
    },

    {
      "titulo": "Blue Tree Faria Lima",
      "subcategorias": [
        {
          "nome": "Quartos",
          "imagem": "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681_1280.jpg",
          "videos": [
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
          ]
        },
        {
          "nome": "Negócios",
          "imagem": "https://cdn.pixabay.com/photo/2017/08/20/13/10/usa-2661656_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
        {
          "nome": "Turismo",
          "imagem": "https://cdn.pixabay.com/photo/2014/04/15/15/34/sao-paulo-324913_1280.jpg",
          "videos": [ "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" ]
        },
      ]
    },


  ];

   Widget _buildCategoria(BuildContext context, Map<String, dynamic> categoria) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(
             categoria["titulo"],
             style: const TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
         ),
         SizedBox(
           height: 200,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             //itemCount: categoria["subcategorias"].length,
             itemBuilder: (context, index) {
               final sub = categoria["subcategorias"][index % categoria["subcategorias"].length];
               //final sub = categoria["subcategorias"][index];
               return GestureDetector(
                 onTap: () {
                   String url = sub["videos"][0];

                   Navigator.push(context, MaterialPageRoute(builder: (_) => VideoPlayerScreen(url: url)));

                   // Caso queira abrir uma nova página com vários vídeos de uma cat
                   // Navigator.push(
                   //   context,
                   //   MaterialPageRoute(
                   //     builder: (_) => VideoListScreen(
                   //       titulo: sub["nome"],
                   //       videos: sub["videos"],
                   //     ),
                   //   ),
                   // );

                 },
                 child: Container(
                   width: 160,
                   margin: const EdgeInsets.symmetric(horizontal: 8),
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage(sub["imagem"]),
                       fit: BoxFit.cover,
                     ),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     padding: const EdgeInsets.all(6),
                     color: Colors.black54,
                     child: Text(
                       sub["nome"],
                       style: const TextStyle(color: Colors.white),
                     ),
                   ),
                 ),
               );
             },
           ),
         ),
       ],
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1D3A),
      appBar: AppBar(
        title: const Text("Blue Tree Hotels VOD"),
        backgroundColor: const Color(0xFF0B1D3A),
      ),
      body: ListView(
        children: [

          slider.CarouselSlider(
            options: slider.CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              scrollPhysics: const BouncingScrollPhysics(), // ajuda na web
              viewportFraction: 1.0,
            ),
            items: [
              "https://cdn.pixabay.com/photo/2014/05/30/18/30/vancouver-358515_1280.jpg",
              "https://cdn.pixabay.com/photo/2023/03/29/10/27/hotel-7885138_1280.jpg",
              "https://cf.bstatic.com/xdata/images/hotel/max1024x768/655767190.jpg?k=9d3781ac862aecdaaeca9b3d3a934aec8bd5a2d0e71719bd6377c1469f4c01e2&o=",
            ].map((url) {
              return GestureDetector(
                  onTap: () {
                    url="https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4";
                    Navigator.push(context, MaterialPageRoute(builder: (_) => VideoPlayerScreen(url: url)));
                  },
                  child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
              ));
            }).toList(),
          ),

          // Lista de categorias com carrosséis
          ...categorias.map((cat) => _buildCategoria(context, cat)).toList(),
        ],
      ),
    );
  }

  // Widget _buildCarrossel(String titulo, List<String> videos) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(8),
  //         child: Text(titulo, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //       ),
  //       SizedBox(
  //         height: 150,
  //         child: ListView.builder(
  //           scrollDirection: Axis.horizontal,
  //           itemCount: videos.length,
  //           itemBuilder: (context, i) {
  //             return Container(
  //               width: 120,
  //               margin: const EdgeInsets.symmetric(horizontal: 6),
  //               child: Card(
  //                 color: Colors.blueGrey[800],
  //                 child: Center(
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(8),
  //                     child: Text(
  //                       videos[i],
  //                       textAlign: TextAlign.center,
  //                       style: const TextStyle(fontSize: 14),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

class VideoListScreen extends StatelessWidget {
  final String titulo;
  final List<String> videos;

  const VideoListScreen({super.key, required this.titulo, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1D3A),
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: const Color(0xFF0B1D3A),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final videoUrl = videos[index];
          return ListTile(
            leading: Image.network(
              "https://cdn-icons-png.flaticon.com/512/1384/1384060.png",
              width: 40,
              height: 40,
            ),
            title: Text(
              "- Vídeo ${index + 1}",
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(videoUrl, style: const TextStyle(color: Colors.white70)),
            onTap: () {
              abrirVideo(context,videoUrl);
            },
          );
        },
      ),
    );
  }
}

void abrirVideo(BuildContext context, String videoUrl) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => VideoPlayerScreen(url: videoUrl),
    ),
  );
}
