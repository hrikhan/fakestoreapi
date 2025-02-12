import 'package:api/product_model.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  product productrecieved;
  details({super.key, required this.productrecieved});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: Row(

                children: <Widget>[
                  Container(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(

                                height: 220,
                                width: MediaQuery.of(context).size.width  /2,
                                child: Image.network(productrecieved.image!,fit: BoxFit.contain,),),
               Container(
                 width: MediaQuery.of(context).size.width  /2,
                 child: Column(
                   children: [
               Text(productrecieved.title!,
               style: TextStyle(fontSize: 20),
                 maxLines: 4,
                  overflow: TextOverflow.ellipsis,

                ),
               SizedBox(height: 8),
                 Text("Price ${productrecieved.price.toString()}",style: TextStyle(color: Colors.red,fontSize: 20),),
               SizedBox(height: 8),


                   ],
                 ),
               )
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(productrecieved.description!),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
                onPressed: (){},
                  child: Text('Buy',style: TextStyle(fontSize: 30,color:Colors.white),)),
          )
          ],
        ),
      ),
    );
  }
}
