import 'package:flutter/material.dart';
import 'package:skillxchange/presentation/screens/applicationList_screen.dart';

class ContactInformationScreen extends StatefulWidget {
  const ContactInformationScreen({super.key});

  @override
  State<ContactInformationScreen> createState() =>
      _ContactInformationScreenState();
}

class _ContactInformationScreenState extends State<ContactInformationScreen> {
  // Controllers for text input fields
  final _contactNameController = TextEditingController();
  final _contactEmailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _socialMediaLinkController = TextEditingController();

  // Dispose controllers when the widget is removed
  @override
  void dispose() {
    _contactNameController.dispose();
    _contactEmailController.dispose();
    _phoneNumberController.dispose();
    _socialMediaLinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Column(
        children: [
          // Top section with logo and skip button
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Display the company logo
                  Container(
                    width: 160, // Set width of the logo
                    height: 70, // Set height of the logo
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      fit: BoxFit.contain, // Ensure the logo fits within the container
                    ),
                  ),

                  // Skip button with an arrow icon
                  TextButton(
                    onPressed: () {
                      // Add functionality for the skip button
                    },
                    child: Row(
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.grey, // Set text color
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 4), // Add space between text and icon
                        Text(
                          '￫',
                          style: TextStyle(
                            color: Colors.grey, // Set icon color
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Main content of the screen
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(), // Display the header
                  const SizedBox(height: 33), // Add vertical spacing
                  _buildContactNameField(), // Contact name input field
                  const SizedBox(height: 19),
                  _buildContactEmailField(), // Contact email input field
                  const SizedBox(height: 19),
                  _buildPhoneNumberField(), // Phone number input field
                  const SizedBox(height: 19),
                  _buildSocialMediaLinkField(), // Social media link input field
                  const SizedBox(height: 195),
                  _buildNavigationButtons(), // Navigation buttons (Back and Next)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build the header text
  Widget _buildHeader() {
    return Text(
      'Contact Information',
      style: TextStyle(
        fontWeight: FontWeight.bold, // Set font weight
        fontSize: 20, // Set font size
        color: Colors.black, // Set text color
      ),
    );
  }

  // Build the contact name input field
  Widget _buildContactNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Name',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _contactNameController,
          decoration: InputDecoration(
            hintText: 'Contact name', // Placeholder text
            hintStyle: TextStyle(color: Colors.grey[500]), // Set hint text color
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Set padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Set border radius
              borderSide: BorderSide(color: Colors.grey[300]!), // Set border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Set focused border color
            ),
          ),
        ),
      ],
    );
  }

  // Build the contact email input field
  Widget _buildContactEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Email',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _contactEmailController,
          decoration: InputDecoration(
            hintText: 'Email', // Placeholder text
            hintStyle: TextStyle(color: Colors.grey[500]), // Set hint text color
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Set padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Set border radius
              borderSide: BorderSide(color: Colors.grey[300]!), // Set border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Set focused border color
            ),
          ),
        ),
      ],
    );
  }

  // Build the phone number input field
  Widget _buildPhoneNumberField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone Number',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _phoneNumberController,
          decoration: InputDecoration(
            hintText: '+961 XX XXXXXX', // Placeholder text
            hintStyle: TextStyle(color: Colors.grey[500]), // Set hint text color
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Set padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Set border radius
              borderSide: BorderSide(color: Colors.grey[300]!), // Set border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Set focused border color
            ),
          ),
        ),
      ],
    );
  }

  // Build the social media link input field
  Widget _buildSocialMediaLinkField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Social Media Link',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _socialMediaLinkController,
          decoration: InputDecoration(
            hintText: 'https://', // Placeholder text
            hintStyle: TextStyle(color: Colors.grey[500]), // Set hint text color
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Set padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Set border radius
              borderSide: BorderSide(color: Colors.grey[300]!), // Set border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Set focused border color
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.add, color: Colors.grey[700]), // Add a "+" icon
              onPressed: () {
                // Add functionality for the "+" button
              },
            ),
          ),
        ),
      ],
    );
  }

  // Build the navigation buttons (Back and Next)
  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back button
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              // Navigate back to the previous screen
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white, // Set button background color
              padding: const EdgeInsets.symmetric(vertical: 12), // Set padding
              side: BorderSide(color: Colors.grey[400]!), // Set border color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7), // Set border radius
              ),
            ),
            child: Text(
              'Back',
              style: TextStyle(
                color: Color(0xFF1E225A), // Set text color
                fontWeight: FontWeight.w600, // Set font weight
              ),
            ),
          ),
        ),
        const SizedBox(width: 16), // Add horizontal spacing
        // Next button
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ApplicationlistScreen()
              ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1E225A), // Set button background color
              foregroundColor: Color(0xFF1E225A), // Set text color
              padding: const EdgeInsets.symmetric(vertical: 12), // Set padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7), // Set border radius
              ),
              elevation: 5, // Set button elevation (shadow)
            ),
            child: const Text(
              'Next ￫',
              style: TextStyle(color: Colors.white), // Set text color
            ),
          ),
        ),
      ],
    );
  }
}