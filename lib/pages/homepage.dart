import 'package:flutter/material.dart';
import 'package:mental_illness_app_ui/util/emoticon_faces.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
      ]),
      body: SafeArea(
          child: Column(
        children: [
          //nested column
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Greetings Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi Fareed!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          '30th July 2003',
                          style: TextStyle(color: Colors.blue[200]),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[600]),
                  padding: const EdgeInsets.all(12),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                //adds spacing
                const SizedBox(
                  height: 25,
                ),
                // How do you feel

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                // 4 diff faces in a row

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    EmoticonFace(
                      emoticonFace: '😫',
                      label: 'Bad',
                    ),
                    //Fine
                    EmoticonFace(
                      emoticonFace: '🙂',
                      label: 'Fine',
                    ),
                    //well

                    EmoticonFace(emoticonFace: '😃', label: 'Well'),
                    //excellent
                    EmoticonFace(emoticonFace: '😁', label: 'Excellent')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: Container(
            color: Colors.white,
          ))
        ],
      )),
    );
  }
}
