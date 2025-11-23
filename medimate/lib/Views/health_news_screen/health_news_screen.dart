import 'package:flutter/material.dart';
import 'package:medimate/Views/health_news_screen/health_news_details.dart';
import 'package:medimate/services/news_api_service/news_api_model.dart';

class HealthNewsScreen extends StatelessWidget {
  final List<NewsApiModel> list;
  const HealthNewsScreen({required this.list,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Articles",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
                                itemCount: list.length,
                                itemBuilder: (context, index) => GestureDetector(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HealthNewsDetails(article: list[index]),)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      height: 67,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.black26,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                            clipBehavior: Clip.hardEdge,
                                            child: Image.network(
                                              errorBuilder: (context, error, stackTrace) => Text("No Image"),
                                              list[index].image,
                                              height: 55,
                                              width: 53,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                height: 32,
                                                width: 173,
                                                child: Text(
                                                  list[index].description,
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis
                                                  ,style: TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              Text(list[index].publishedAt,style: TextStyle(fontSize: 10),)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 67,
                                            width: 50,
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.bookmark),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
      ),
    );
  }
}