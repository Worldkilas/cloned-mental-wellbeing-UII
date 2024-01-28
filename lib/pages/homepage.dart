import 'package:flutter/material.dart';
import 'package:mental_illness_app_ui/util/custom_list_tile.dart';
import 'package:mental_illness_app_ui/util/emoticon_faces.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About')
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
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            child: Center(
              child: Column(
                children: [
                  //Exercise heading
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //ListView of exercises
                  Expanded(
                    child: ListView(children: const [
                      CustomListTile(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        title: 'Speaking Skills',
                        subtitle: '16 exercises',
                        color: Colors.orange,
                      ),
                      CustomListTile(
                        icon: Icon(
                          Icons.person_2,
                          color: Colors.white,
                        ),
                        title: 'Reading Skills',
                        subtitle: '12 exercises',
                        color: Colors.green,
                      ),
                      CustomListTile(
                        icon: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        title: 'Writing Skills',
                        subtitle: '20 exercises',
                        color: Colors.pink,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }
}
