import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: const Center(
          child: Text(
            'facebook',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.add, size: 25),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.message,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.movie_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.shop_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.person_outline,
                  size: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://media.cnn.com/api/v1/images/stellar/prod/201218101034-mark-zuckerberg-file.jpg?q=x_6,y_243,h_1684,w_2993,c_crop/h_720,w_1280')),
                      Text(
                        'Zuck Berg',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(Icons.comment_outlined),
                      Icon(Icons.share_outlined),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
