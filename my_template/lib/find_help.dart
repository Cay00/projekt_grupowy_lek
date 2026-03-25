import 'package:flutter/material.dart';

class FindHelpPage extends StatefulWidget {
  const FindHelpPage({super.key});

  @override
  State<FindHelpPage> createState() => _FindHelpPageState();
}

class _FindHelpPageState extends State<FindHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Find Help')),
      body: Column(
        children: [
          // Search Input
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          // Filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('All')),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Locations'),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Skills')),
                ElevatedButton(onPressed: () {}, child: const Text('Rating')),
              ],
            ),
          ),
          // Scrollable List of People
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            'https://via.placeholder.com/150', // Replace with actual image URL
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Name, Profession, Distance
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'John Doe', // Replace with actual name
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '4.5', // Replace with actual rating
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Nurse', // Replace with actual profession
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '5 km away', // Replace with actual distance
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
