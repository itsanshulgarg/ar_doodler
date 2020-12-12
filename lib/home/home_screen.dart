import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrawScreen2D()),
              );
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

class DrawScreen2D extends StatefulWidget {
  @override
  _DrawScreen2DState createState() => _DrawScreen2DState();
}

class _DrawScreen2DState extends State<DrawScreen2D> {
  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    getImage();
    super.initState();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2D Draw"),
        centerTitle: true,
      ),
        body: Container(
          child: _image == null
              ? Center(child: Text('No image selected.'))
              : Image.file(_image),
        ));
  }
}
