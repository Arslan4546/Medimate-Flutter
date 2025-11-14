import 'package:flutter/material.dart';
import 'package:medimate/Widgets/custom_button.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,String>> lists=[
      {
        "title":"Mon",
        "date":"21"
      },
      {
        "title":"Tue",
        "date":"22"
      },
      {
        "title":"wed",
        "date":"23"
      },
      {
        "title":"Thu",
        "date":"24"
      },
      {
        "title":"Fri",
        "date":"25"
      },
      {
        "title":"Sat",
        "date":"26"
      },
      {
        "title":"Sun",
        "date":"27"
      }
    ];
    var Size(:height,:width)=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Detail",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          spacing: height*0.04,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            SizedBox(
              height: 110,
              width: double.infinity,
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(padding: EdgeInsets.only(right: 10),child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(fit: BoxFit.fill,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThz7j92SRWribxfxR_qMYgRnBcbXr4m5QBJw&s3")))),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Text("Dr.Ruchita",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Text("Dentists",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black45),),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Container(height: 18,width: 41,color: Colors.blue[50],child: Row(children: [Icon(Icons.star,color: Colors.blue,size: 16,),Text("4.7",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w500),)],),),
                          ],
                        )),
                        Expanded(child: Row(children: [Icon(Icons.location_on,color: Colors.black38,size: 12,),Text("800m away",style: TextStyle(color: Colors.black45,fontSize: 12,fontWeight: FontWeight.w500),)],)),
                      ],
                    ))
                ],
              ),
            ),
            Text("About",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: SizedBox(child: Text("Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut laore et dolore magna aliqua. Ut enim ad minim veniam",style: TextStyle(fontSize: 14,color: Colors.black45,fontWeight: FontWeight.w400),)),
            ),
            SizedBox(
              height: height*0.1,
              width: width,
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lists.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: height*0.05,
                  width: width*0.14,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black26)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(lists[index]["title"]!,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black45),),
                      Text(lists[index]["date"]!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)
                    ],
                  ),
                ),
              )
             ,), 
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                height: 1,
                width: width,
                color: Colors.black12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: SizedBox(
                height: 56,
                width: width,
                child: CustomButton(buttonColor: Colors.blue, label: "Book Apointment", labelColorData: Colors.white, onPressed: (){})),
            )
          ],
        ),
      ),
    );
  }
}