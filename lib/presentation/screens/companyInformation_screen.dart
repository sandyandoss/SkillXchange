import 'package:flutter/material.dart';

// Main screen for entering company information
class CompanyInformationScreen extends StatefulWidget {
  const CompanyInformationScreen({super.key});

  @override
  State<CompanyInformationScreen> createState() =>
      _CompanyInformationScreenState();
}

class _CompanyInformationScreenState extends State<CompanyInformationScreen> {
  // Key to identify the form
  final _formKey = GlobalKey<FormState>();

  // Controllers to manage text input fields
  final _companyNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _industryController = TextEditingController();
  final _websiteController = TextEditingController();

  // Dispose controllers when the widget is removed from the widget tree
  @override
  void dispose() {
    _companyNameController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _industryController.dispose();
    _websiteController.dispose();
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
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(), // Display the header
                    const SizedBox(height: 33), // Add vertical spacing
                    _buildCompanyNameField(), // Company name input field
                    const SizedBox(height: 19),
                    _buildDescriptionField(), // Company description input field
                    const SizedBox(height: 19),
                    _buildLocationField(), // Location input field
                    const SizedBox(height: 19),
                    _buildCompanyWebsiteField(), // Company website input field
                    const SizedBox(height: 19),
                    _buildIndustrySection(), // Industry input field
                    const SizedBox(height: 100),
                    _buildNavigationButtons(), // Navigation buttons (Back and Next)
                  ],
                ),
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
      'Company Information',
      style: TextStyle(
        fontWeight: FontWeight.bold, // Set font weight
        fontSize: 20, // Set font size
        color: Colors.black, // Set text color
      ),
    );
  }

  // Build the company name input field
  Widget _buildCompanyNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Name',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _companyNameController,
          decoration: InputDecoration(
            hintText: 'Your company name', // Placeholder text
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

  // Build the company description input field
  Widget _buildDescriptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Description',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _descriptionController,
          maxLines: 1, // Allow only one line of input
          decoration: InputDecoration(
            hintText: 'Details company', // Placeholder text
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

  // Build the location input field
  Widget _buildLocationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _locationController,
          decoration: InputDecoration(
            hintText: 'Your location', // Placeholder text
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
              icon: Icon(Icons.location_on_outlined, color: Colors.grey[700]), // Set icon
              onPressed: () {
                // Add functionality for location picker
              },
            ),
          ),
        ),
      ],
    );
  }

  // Build the company website input field
  Widget _buildCompanyWebsiteField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Website',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _websiteController,
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
          ),
        ),
      ],
    );
  }

  // Build the industry input field
  Widget _buildIndustrySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Industry',
          style: TextStyle(
            fontWeight: FontWeight.w600, // Set font weight
            color: Colors.black, // Set text color
          ),
        ),
        const SizedBox(height: 8), // Add vertical spacing
        TextFormField(
          controller: _industryController,
          decoration: InputDecoration(
            hintText: 'Industry', // Placeholder text
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

  // Build the navigation buttons (Back and Next)
  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back button
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              // Add functionality for the back button
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
              // Add functionality for the next button
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