import 'package:flare_anim_xperiment/components/button_controll.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum Event{play, stop, look_up, look_down}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _pause = 'pause';
  String _animation = 'bounce';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            child: FlareActor(
              'assets/burbot.flr',
              animation: _animation,
            ),
          ),
          Text('Hi Jackson!'),
          SizedBox(
            height: 60,
          ),
         Container(
           width: 300,
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               ButtonControll(
                 icon: Icons.play_arrow,
                 onPress: (){

                 },
               ),
               ButtonControll(
                 icon: Icons.stop,
                 onPress: (){

                 },
               ),
               ButtonControll(
                 icon: Icons.keyboard_arrow_up,
                 onPress: (){

                 },
               ),
               ButtonControll(
                 icon: Icons.keyboard_arrow_down,
                 onPress: (){

                 },
               ),
             ],
           ),
         ),
        ],
      ),
    ));
  }
}