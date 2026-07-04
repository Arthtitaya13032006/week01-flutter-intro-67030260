import 'package:flutter/material.dart';
import 'pages/ai_chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ของฉัน'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),

              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Arthittaya Phiokham',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'รหัสนักศึกษา : 67030260',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 25),

              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildInfoRow(
                        Icons.school,
                        'คณะ',
                        'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี',
                      ),
                      const Divider(),
                      _buildInfoRow(
                        Icons.computer,
                        'สาขา',
                        'เทคโนโลยีคอมพิวเตอร์',
                      ),
                      const Divider(),
                      _buildInfoRow(
                        Icons.code,
                        'วิชาที่ชอบ',
                        'Mobile Application Development',
                      ),
                      const Divider(),
                      _buildInfoRow(
                        Icons.favorite,
                        'งานอดิเรก',
                        'เขียนโปรแกรมและเรียนรู้เทคโนโลยี',
                      ),
                      const Divider(),
                      _buildInfoRow(
                        Icons.flag,
                        'เป้าหมาย',
                        'พัฒนาแอปพลิเคชัน Flutter ให้ใช้งานได้จริง',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AiChatPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.smart_toy),
                label: const Text("ทดลอง AI Chat"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildInfoRow(
      IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.orange),
          const SizedBox(width: 12),
          Text(
            '$label : ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}