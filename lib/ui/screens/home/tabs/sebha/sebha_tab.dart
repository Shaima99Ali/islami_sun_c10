

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "SebhaTab";

  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turn=0;

  List<String> azkhar=['سبحان الله','الله اكبر','لا اله الا الله','الحمد لله'];
  int index=0;
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [

        Align(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Padding(padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height*0.20,),
                child: 
                //Image.asset('assets/images/head of seb7a.png'),
                Image.asset('assets/images/head of new.png'),
              ),
              Padding(padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width*0.06,),
                child: AnimatedRotation(
                    duration: Duration(microseconds: 1),
                    turns: turn,
                    child: 
                    //Image.asset('assets/images/body of seb7a.png')
                  Image.asset('assets/images/body of new.png')
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 43,),

        Column(
          children: [
            Text('عدد التسبيحات',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 23,),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                //  color: Theme.of(context).primaryColor,
                color: Theme.of(context).primaryColor.withOpacity(.4),


                borderRadius: BorderRadius.circular(24),
              ),
              child:  Text(
                count.toString(),
              ),
            ),

            const SizedBox(height: 22,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: (){
                setState(() {
                  count++;
                  turn+=.3;
                  if(count==34){
                    count=0;
                    index++;
                    if(index==azkhar.length){
                      index=0;
                    }
                  }
                });
              },
              child: Text(
                azkhar[index],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),


            ),


          ],
        )

      ],

    );
/*
 Text(
          'عدد التسبيحات',
          style:TextStyle(
              color: Colors.black,
              // fotW:FontWeight.w600,
              fontSize:25
          ),
        ),
 */


  }
}

