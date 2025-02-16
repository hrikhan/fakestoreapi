import 'package:api/add.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class addproduct extends StatelessWidget {
  addproduct({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar:AppBar(title: Text("Marketplace"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(

        height:  MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(500, 50),
                    backgroundColor: Colors.blue

                  ),
                  onPressed: (){
                    Get.to(Add());

                  }, child: Text("add product",style: TextStyle(color:Colors.white,fontSize: 20))),


           SizedBox(
             height: 10,
           ) ,  ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(500, 50),
                      backgroundColor:Colors.blue,

                  ),

                  onPressed: (){}, child: Text("Update product",style: TextStyle(color:Colors.white,fontSize: 20 ),)),

              SizedBox(
                height: 10,
              ) ,

              ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(500, 50),
                      backgroundColor: Colors.blue

                  ),

                  onPressed: (){}, child: Text("Delete product",style: TextStyle(color:Colors.white,fontSize: 20)))

            ],
          ),
        ),
      ),


    );
  }
}
