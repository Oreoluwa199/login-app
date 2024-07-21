import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
            child: Padding(
                padding:
                    const EdgeInsets.all(16.0), // Adds padding on all sides
                child: Column(
                    mainAxisSize: MainAxisSize
                        .min, // Ensures the Column only takes as much space as its children need
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centers the children vertically within the Column
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Centers the children horizontally within the Column
                    children: [
                      const Center(
                        child: Image(
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.o1dh2eApP-0JlN7SiKIg0QHaEK?rs=1&pid=ImgDetMain',
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize
                            .min, // Ensures the Row only takes as much space as its children need
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Centers the children within the Row
                        children: const [
                          Icon(
                            Icons.star,
                            size: 40,
                            color: Colors.blue,
                          ),
                          SizedBox(
                              width:
                                  8.0), // Adds some space between the icon and the text
                          Text(
                            'ESTEEMED CUSTOMERS',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      // Adds some space between the Row and the first text below
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Thank you for your hard work and dedication. Your contributions are invaluable to our teams success Your creativity and innovative ideas breathe life into our projects. Thank you for thinking outside the box.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                        child: const Text(
                          'Thank You',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                      // Adds some space between the first and second text
                    ]))));
  }
}
