import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

class MyAppinioSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      myItem('https://i.pinimg.com/originals/fe/9b/9b/fe9b9be37e62239fecb2d3b51b5b287a.jpg', 'Grape'),
      myItem('https://nothymetowastedotorg.files.wordpress.com/2014/07/cherriesisolateddarkest.jpg', 'blueberry'),
      myItem('https://i.pinimg.com/originals/f3/b5/7b/f3b57b8d68ec8bf3a51b697377d7a063.png','Fig'),
      myItem('https://images.unsplash.com/photo-1591996501275-6475464826bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80', 'pomegranate'),
      myItem('https://images.unsplash.com/photo-1509391618207-32f1fa13c1d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b3JhbmdlJTIwZnJ1aXR8ZW58MHx8MHx8&w=1000&q=80', 'Orange'),
      myItem('https://cdn1.sph.harvard.edu/wp-content/uploads/sites/30/2018/08/berries-1851511_1920.jpg','Strawberry'),
    ];
    return Scaffold(
      body: Center(
        child: Container(
          height:400,
          child: AppinioSwiper(
            cards: cards,
          ),
        ),
      ),
    );
  }

  Widget myItem(String image , String name) =>
      Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Card(
            elevation: 20,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(image)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
          ),
        ],
      );

}
