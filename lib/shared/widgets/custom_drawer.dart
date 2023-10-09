


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pacotes/pages/auto_size_text.dart/auto_size_text_page.dart';
import 'package:pacotes/pages/main_page.dart';
import 'package:pacotes/pages/percent_indicator/percent_indicator_page.dart';

class CustomDrawer extends StatelessWidget{
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Drawer(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    context: context,
                    builder: (BuildContext bc){
                      return  Wrap(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: const Text("Câmera"),
                            leading: const Icon(Icons.camera),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: const Text("Galeria"),
                            leading: const Icon(Icons.album),
                          ),
                        ],
                      );
                    }
                  );
                },
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.orange),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network("https://escolhaideal.org/wp-content/uploads/2023/01/1644436653-768x400.jpg")),
                  accountName: const Text("Lavynia Barbosa"), accountEmail: const Text("email@email.com")),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      FaIcon(FontAwesomeIcons.userDoctor,
                      color: Colors.green,
                      size: 20,
                      ),
                      SizedBox(width: 5),
                      Text("Opção 1"),
                    ],
                  )
                  ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  const MainPage(
                      )));
                }
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      FaIcon(FontAwesomeIcons.percent,
                      color: Colors.green,
                      size: 20,
                      ),
                      SizedBox(width: 5),
                      Text("Indicador de Porcentagem"),
                    ],
                  )
                  ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) =>  const PercentIndicatorPage(
                      )));
                }
              ),

              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      FaIcon(FontAwesomeIcons.paperclip,
                      color: Colors.green,
                      size: 20,
                      ),
                      SizedBox(width: 5),
                      Text("Auto Size text"),
                    ],
                  )
                  ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) =>  const AutoSizeTextPage(
                      )));
                }
              ),
             
            ],
          )
        );
  }
}

/*class MyWidget extends StatelessWidget{
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  }
}*/