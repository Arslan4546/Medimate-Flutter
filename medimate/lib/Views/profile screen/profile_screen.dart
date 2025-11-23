import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Size(:height,:width)=MediaQuery.sizeOf(context);
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            spacing: height*0.04,
            children: [
              Center(
                child: Column(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://www.shutterstock.com/image-vector/male-doctor-smiling-selfconfidence-flat-600nw-2281709217.jpg"),
                    ),
                    Text("Rushita",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset("assets/Heartbeat.svg",width:24,height: 27),
                        Text("heartbeat",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.blue),),
                        Text("215bpm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.blue),)
                      ],
                    ),
                    Container(
                      height: height*0.06,
                      width: 1,
                      color: Colors.black12,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset("assets/calories.svg",width:24,height: 27),
                        Text("Calories",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.blue),),
                        Text("255Cal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.blue),)
                      ],
                    ),
                    Container(
                      height: height*0.06,
                      width: 1,
                      color: Colors.black12,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset("assets/weight.svg",width:24,height: 27),
                        Text("Weight",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.blue),),
                        Text("103Ibs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.blue),)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: height*0.4,
                  width: width,
                  child: Column(
                    children: [
                      ListTile(
                        dense: true,
                        leading: Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(100)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/Heart.png"),
                            ),
                            title: Text("My Saved",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Container(
                        height: 1,
                        width: width*0.8,
                        color: Colors.black12,
                      ),
                      ListTile(
                        dense: true,
                        leading: Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(100)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/Document.png"),
                            ),
                            title: Text("Apointment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Container(
                        height: 1,
                        width: width*0.8,
                        color: Colors.black12,
                      ),
                      ListTile(
                        dense: true,
                        leading: Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(100)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/Wallet.png"),
                            ),
                            title: Text("Payment Method",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Container(
                        height: 1,
                        width: width*0.8,
                        color: Colors.black12,
                      ),
                      ListTile(
                        dense: true,
                        leading: Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(100)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/Chat.png"),
                            ),
                            title: Text("FAQs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Container(
                        height: 1,
                        width: width*0.8,
                        color: Colors.black12,
                      ),
                      ListTile(
                        dense: true,
                        leading: Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(100)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/layer1.png"),
                            ),
                            title: Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}