import 'package:flutter/material.dart';
import 'package:medimate/Views/top%20doctors/top_doctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Size(:width,:height)=MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 208, 232, 251),
        child: Stack(
          children: [
            Positioned(
              top: height*0.13,
              left: width*0.1,
              child: Container(
                width: width*0.8,
                height: height*0.4,
                
                child: Stack(
                  children: [
                    Positioned(
                      right: 2,
                      child: Image.asset("assets/woman_image.png",height: 239,width: 160,)),
                    Positioned(
                      top: height*0.1,
                      child: Text("Welcome !",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                    ),
                    Positioned(
                      top: height*0.125,
                      child: Text("Rachita",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),)
                    ),
                    Positioned(
                      top: height*0.17,
                      child: Text("How is it going today?",style: TextStyle(color: Colors.black38,fontSize: 16,fontWeight: FontWeight.w300),)
                    )   
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: height*0.54,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsetsGeometry.all(height*0.02)),
                      Container(
                        height: height*0.05,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsetsGeometry.all(10)),
                            Icon(Icons.search_rounded,color: Colors.black26,),
                            SizedBox(width: 10,),
                            Text("Search Doctor, drugs and articles ...",style: TextStyle(fontSize: 14,color: Colors.black45),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height*0.03,
                      ),
                      SizedBox(
                        height: 100,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopDoctors(),)),
                              child: Column(
                                children: [
                                  Container(
                                    height: width*0.12,
                                    width: width*0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: Image.asset("assets/Doctor.png"),
                                  ),
                                  SizedBox(
                                    height: height*0.01,
                                  ),
                                  Text("Top Doctors",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: width*0.12,
                                  width: width*0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: Image.asset("assets/Pharmacy.png"),
                                ),
                                SizedBox(
                                  height: height*0.01,
                                ),
                                Text("Pharmacy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: width*0.12,
                                  width: width*0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: Image.asset("assets/Ambulance.png"),
                                ),
                                SizedBox(
                                  height: height*0.01,
                                ),
                                Text("Ambulance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Health article",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          TextButton(onPressed: (){
                            //text button click seee all
                          }, child: Text("See all",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),))
                        ],
                      ),
                      SizedBox(
                        height: height*0.22,
                        width: width,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(height: 67,width: width,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black26),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/Spalsh screen.png",height: 55,width: 53,fit: BoxFit.fill,),
                                Column(
                                  children: [
                                    SizedBox(
                                  height: 28,
                                  width: 173,
                                  child: Text("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",maxLines: 2,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),)),
                                  ],
                                ),
                                SizedBox(
                                  height: 67,
                                  width: 50,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.bookmark)),
                                  ),
                                )  
                              ],
                            ),),
                          ),
                        )
                      )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}