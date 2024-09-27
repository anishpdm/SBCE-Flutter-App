import 'package:flutter/material.dart';

class InstagramFeed extends StatelessWidget {
  const InstagramFeed({super.key});

  final List<Map<String, String>> feedData = const [
    {
      "name": "Hari",
      "subtitle": "SBCE",
      "profileImage": "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
      "postImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFYu3vPJQ6oJsV5eEq23fJ-KtPLNgR5UTvZcbSNe-n1Aik2IRhg5aHajSd8_UMelQiw2k&usqp=CAU",
      "likes": "23"
    },
    {
      "name": "Manu",
      "subtitle": "Sree budha College of Engineering",
      "profileImage": "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
      "postImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFYu3vPJQ6oJsV5eEq23fJ-KtPLNgR5UTvZcbSNe-n1Aik2IRhg5aHajSd8_UMelQiw2k&usqp=CAU",
      "likes": "23"
    },
    {
      "name": "Anil",
      "subtitle": "FISAT",
      "profileImage": "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
      "postImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFYu3vPJQ6oJsV5eEq23fJ-KtPLNgR5UTvZcbSNe-n1Aik2IRhg5aHajSd8_UMelQiw2k&usqp=CAU",
      "likes": "45"
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedData.length,
      itemBuilder: (context, index) {
        final item = feedData[index];
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item['profileImage']!),
                ),
                title: Text(
                  item['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  item['subtitle']!,
                  style: TextStyle(fontSize: 8),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              Image.network(
                item['postImage']!,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  Text(item['likes']!),
                  IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
