

import 'package:flutter/material.dart';
void main(){
runApp(const MaterialApp(
home: MyApp(),
));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shooping App"),
        actions: [
         IconButton(
      icon: const Icon(
        Icons.add_shopping_cart_outlined,
        color: Color(0xFF0000FF),
        size: 34.0,
      ),
      onPressed: () {},
    ),]

          
        ),
        
        body: const Column(
          children: [Row(
            children: [
              AboutDialog(item:"item 1"),
              AboutDialog(item:"item 2")
            ],
            
          ),Row(
            children: [
              AboutDialog(item:"item 3"),
              AboutDialog(item:"item 4")
            ],
          )
        ],
        )

        
      );
      
      
  }
}
class AboutDialog extends StatelessWidget {
  const AboutDialog({
    Key? key,
    this.item
  }) : super(key: key);

final String? item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50,),
          Container( padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              border: Border.all(),
               borderRadius: BorderRadius.circular(50),
              ),
              child: Text(item!),),
          const SizedBox(height: 10,),
          ElevatedButton.icon(label: const Text("Buy Now"),onPressed: () {  },icon:const Icon(Icons.circle,size:0,),),
        ],
      ),
    );
  }
}


