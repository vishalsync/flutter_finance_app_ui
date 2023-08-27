import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Icon(
            Icons.person_rounded,
          ),
        ),
        title: const Text(
          "VISHAL",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.credit_card),
            label: const Text("BASIC"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue.shade500),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
          const SizedBox(width: 24),
          const Icon(Icons.notifications),
          const SizedBox(width: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Field
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(0),
                ),
              ),
            ),

            const SizedBox(height: 32),
            // Card
            Image.network(
              "https://t3.ftcdn.net/jpg/02/34/61/18/240_F_234611856_NMLpM3zUeUFKBWrCaw9M9RZs7Ga38xjM.jpg",
            ),

            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Scan
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Scan")
                  ],
                ),

                // Send & Pay
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Send & Pay")
                  ],
                ),

                // Move Balance
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.control_camera,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Move Balance")
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),
            const Text("In & Out"),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink.shade300,
                child: const Text(
                  "T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: const Text(
                "TAZKDD",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                "1 Jul 2023",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: const SizedBox(
                width: 168,
                child: Row(
                  children: [
                    Text("Money received"),
                    SizedBox(width: 8),
                    Text(
                      "+5 US\$",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink.shade300,
                child: const Text(
                  "A",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: const Text(
                "ANGGUN",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                "20 Jun 2023",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: const SizedBox(
                width: 180,
                child: Row(
                  children: [
                    Text("Money received"),
                    SizedBox(width: 8),
                    Text(
                      "+20 US\$",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),

            // Button
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Show all",
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            // Bottom Nav
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "Card",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.history,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "History",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
