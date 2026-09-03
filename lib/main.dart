import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    const deepPurple = Color(0xFF2D0A4E);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kerwynn Profile',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: deepPurple,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color(0xFF2D0A4E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5FA),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MY STUDENT PROFILE',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2D0A4E),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              showMessage(context, 'Profile bookmarked!');
            },
            icon: const Icon(Icons.bookmark_outline),
            tooltip: 'Bookmark Profile',
          ),
          IconButton(
            onPressed: () {
              showMessage(context, 'Welcome to my student profile!');
            },
            icon: const Icon(Icons.info_outline),
            tooltip: 'About Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMessage(context, 'Profile saved successfully!');
        },
        backgroundColor: const Color(0xFF5B2C83),
        foregroundColor: Colors.white,
        elevation: 5,
        icon: const Icon(Icons.save_outlined),
        label: Text(
          'Save',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2D0A4E),
                    Color(0xFF5B2C83),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.auto_awesome,
                    color: Color(0xFFE9D5FF),
                    size: 30,
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      'Building skills and creating projects through technology.',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: const Color(0xFFE9DDF0),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1F2D0A4E),
                    blurRadius: 20,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/student.jpg',
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                    semanticLabel: 'Profile photo',
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: double.infinity,
                        height: 260,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF2D0A4E),
                              Color(0xFF7E3FA1),
                            ],
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Profile Image Unavailable',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KERWYNN LENON',
                          style: GoogleFonts.poppins(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                            color: const Color(0xFF2D0A4E),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'BSCS Student | Aspiring Software Developer',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF7E3FA1),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          'I am a Computer Science student who is passionate about '
                          'programming, web development, mobile application development, '
                          'and game development. I enjoy learning new technologies and '
                          'building projects that improve my skills.',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            height: 1.6,
                            color: const Color(0xFF4B4453),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'MY SKILLS',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            color: const Color(0xFF2D0A4E),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            SkillChip(
                              Icons.code,
                              'Programming',
                            ),
                            SkillChip(
                              Icons.phone_android,
                              'Flutter',
                            ),
                            SkillChip(
                              Icons.language,
                              'Web Development',
                            ),
                            SkillChip(
                              Icons.sports_esports,
                              'Game Development',
                            ),
                          ],
                        ),
                        const SizedBox(height: 26),
                        Text(
                          'STUDENT INFORMATION',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            color: const Color(0xFF2D0A4E),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const InfoRow(
                          icon: Icons.school_outlined,
                          label: 'Program',
                          value:
                              'Bachelor of Science in Computer Science',
                        ),
                        const InfoRow(
                          icon: Icons.layers_outlined,
                          label: 'Year Level',
                          value: 'BSCS3A',
                        ),
                        const InfoRow(
                          icon: Icons.computer_outlined,
                          label: 'Track',
                          value: 'Computer Science',
                        ),
                        const InfoRow(
                          icon: Icons.location_on_outlined,
                          label: 'Campus',
                          value: 'Concepcion Holy Cross College INC.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const SkillChip(
    this.icon,
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF0E6F7),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFFD9BCE8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: const Color(0xFF5B2C83),
          ),
          const SizedBox(width: 7),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF3B174F),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: const Color(0xFFF0E6F7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF5B2C83),
              size: 20,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF807486),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D0A4E),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}