import 'package:flutter/material.dart';
import 'package:medimate/Views/top%20doctors/doctor_details.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Doctors",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: ListView.builder(
          itemBuilder:(context, index) => InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorDetails(),)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(8),
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
                                Container(height: 18,width: 41,color: Colors.blue[100],child: Row(children: [Icon(Icons.star,color: Colors.blue,size: 16,),Text("4.7",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w500),)],),),
                              ],
                            )),
                            Expanded(child: Row(children: [Icon(Icons.location_on,color: Colors.black38,size: 12,),Text("800m away",style: TextStyle(color: Colors.black45,fontSize: 12,fontWeight: FontWeight.w500),)],)),
                          ],
                        ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}