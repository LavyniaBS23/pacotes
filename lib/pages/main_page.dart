import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pacotes/shared/widgets/custom_drawer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        drawer: const CustomDrawer(),
        body: TabBarView(
          controller: tabController,
          children: [
            Container(
              color: Colors.blue,
              
            ),
            Container(
              color: Colors.yellow,
              
            ),
            Container(
              color: Colors.red,
              
            ),
            Container(
              color: Colors.green,
              
            ),
            Container(
              color: Colors.orange,
              
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar.badge({0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
    items: [
      const TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    onTap: (int i) => tabController.index = i,
    controller: tabController,
  )
      ),
    );
  }
}



















































/*import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App", /*style: GoogleFonts.pacifico()*/),
      ),
      body: Container(
        width: double.infinity,
        //margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Center(child: Text("O número gerado foi $numeroGerado", style: GoogleFonts.acme(fontSize: 20))),
            //Center(child: Text("Foi clicado $quantidadeCliques vezes", style: GoogleFonts.acme(fontSize: 20)))
            SizedBox(/*serve para fixar o tamanho*/
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blueGrey, 
                child: Text("Foi clicado $quantidadeCliques vezes", style: GoogleFonts.acme(fontSize: 20))
              )
            ),
            Text("O número gerado foi $numeroGerado", style: GoogleFonts.acme(fontSize: 20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue, 
                    child: Text("Nome", style: GoogleFonts.acme(fontSize: 20))
                  )),
                Expanded(flex: 3, child: Container(color: const Color.fromARGB(255, 208, 243, 33), child: Text("Danilo Perez", style: GoogleFonts.acme(fontSize: 20)))),
                Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 33, 243, 65), child: Text("30", style: GoogleFonts.acme(fontSize: 20))),)
              ],
            )
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
            quantidadeCliques = quantidadeCliques + 1;
          });
        },
      ),
    );
  }
}*/
