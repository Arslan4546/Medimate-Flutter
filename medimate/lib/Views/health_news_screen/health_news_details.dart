import 'package:flutter/material.dart';

import 'package:medimate/services/news_api_service/news_api_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HealthNewsDetails extends StatelessWidget {
  final NewsApiModel article;
  const HealthNewsDetails({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    Future<void> openWebPage(String url) async {
  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw "Could not launch $url";
  }
}
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Article Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              width: double.infinity,
              height: 200,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: Image.network(
                      errorBuilder: (context, error, stackTrace) => Center(child: Text("No Image")),
                      article.image,
                      height: 55,
                      width: 53,
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(height: 10,),
            Text(article.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),maxLines: 5),
            SizedBox(height: 10,),
            Text(article.description,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),maxLines: 20),
            SizedBox(height: 5,),
            Text(article.content,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),maxLines: 20),
            TextButton(onPressed: ()async{
              await openWebPage(article.url);
            }, child: Text("See more..."))
          ],
        ),
      ),
    );

  }
}
