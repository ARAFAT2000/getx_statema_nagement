import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'love_controller.dart';

class LoveAppGetX extends StatefulWidget {
  const LoveAppGetX({super.key});

  @override
  State<LoveAppGetX> createState() => _LoveAppGetXState();
}

class _LoveAppGetXState extends State<LoveAppGetX> {
  LoveController c=Get.put(LoveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text('Love App GetX '),
      ),
      
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(

          separatorBuilder:(BuildContext context, int index) => const Divider(),
          itemCount: c.name.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){

                if(c.isTempname.contains(c.name[index].toString())){
                  c.removeLove(c.name[index].toString());
                }else{
                 c.isTempname.add(c.name[index].toString());
                }
                setState(() {

                });

              },
              title: Text(c.name[index].toString()),
              trailing: Icon(Icons.favorite,
                color: c.isTempname.contains(c.name[index].toString())? Colors.red:Colors.blueGrey,),
            );
          },

        ),
      ),
    );
  }
}
