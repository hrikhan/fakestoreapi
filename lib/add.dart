
import 'package:api/adding_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Add extends StatelessWidget {
   Add({super.key});
   TextEditingController productid=TextEditingController();
   TextEditingController productdetails=TextEditingController();
   TextEditingController productidproprice=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" add product"),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child:SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            TextField(
              controller: productid,
              decoration: InputDecoration(
                hintText: "id",
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: productidproprice,
              decoration: InputDecoration(
                hintText: "price",
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: productdetails,
              decoration: InputDecoration(
                hintText: "Details",
                border: OutlineInputBorder(),

              ),
            )


          ,

            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style:   ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,

                    minimumSize: Size(double.infinity, 40)),
                onPressed: (){


            }, child:Text("add",style: TextStyle(color: Colors.white,fontSize: 20),))
          ],
        ),
      ) ,


      ),
    );
  }
}
