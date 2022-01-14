import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          customCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Beautiful', imageUrl: 'https://techcrunch.com/wp-content/uploads/2021/07/tumblr-apocalypse.jpg' ,),
          SizedBox(height: 20),
          CustomCardType2(name: 'Paris', imageUrl: 'https://wallpapercave.com/wp/wp4769063.jpg' ,),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ80xQpvOJfjysJJgoLrLD-n3mNIC49wUwxEQ&usqp=CAU',),
          SizedBox(height: 100),
         
        ],
      )
    );
  }
}

