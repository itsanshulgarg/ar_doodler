import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),

          InkWell(
            onTap: (){
            //TODO: Link camera with this tap function.
            },
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('asset/icons/2dDraw.png'),
            ),
          ),

          Text('2D Draw', style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),

          SizedBox(
            height: 60,
          ),

          InkWell(
            onTap: (){
              //TODO: Link AR Camera with this tap function.
            },
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('asset/icons/3dDraw.png'),
            ),
          ),


          Text('3D Draw', style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),

          Spacer()
        ],
      ),
    );
  }
}

