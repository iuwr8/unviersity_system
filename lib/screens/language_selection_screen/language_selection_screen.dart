import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Language",style: TextStyle(
          fontFamily: "Janna",
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.black,
        ),),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          RadioListTile(
            title: const Text("English",
            style: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.black,
            ),
            ),
            value: "English",
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value.toString();
              });
            },
            activeColor: Colors.orange,
          ),
          RadioListTile(
            title: const Text("العربية",
              style: TextStyle(
                fontFamily: "Janna",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.black,
              ),

            ),
            value: "العربية",
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value.toString();
              });
            },
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}