import 'package:flutter/material.dart';

class CompanyInformationScreen extends StatefulWidget {
  const CompanyInformationScreen({super.key});

  @override
  State<CompanyInformationScreen> createState() =>
      _CompanyInformationScreenState();
}

class _CompanyInformationScreenState extends State<CompanyInformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _companyNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _industryController = TextEditingController();
  final _websiteController = TextEditingController(); // New controller for website

  @override
  void dispose() {
    _companyNameController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _industryController.dispose();
    _websiteController.dispose(); // Dispose the website controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Clean white background
      body: Column(
        children: [
          // Logo and buttons at the top
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Bigger logo
                  Container(
                    width: 160, // Increased width for bigger logo
                    height: 70, // Increased height for bigger logo
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      fit: BoxFit.contain, // Ensures the logo fits within the container
                    ),
                  ),

                  // Combined Skip and arrow button
                  TextButton(
                    onPressed: () {
                      // Add functionality for the combined button
                    },
                    child: Row(
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.grey, // Darker skip text
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 4), // Space between text and arrow
                        Text(
                          '￫',
                          style: TextStyle(
                            color: Colors.grey, // Arrow color
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

          // Rest of the body
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 1),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    const SizedBox(height: 33),
                    _buildCompanyNameField(),
                    const SizedBox(height: 19),
                    _buildDescriptionField(),
                    const SizedBox(height: 19),
                    _buildLocationField(),
                    const SizedBox(height: 19),
                    _buildCompanyWebsiteField(), // New Company Website field
                    const SizedBox(height: 19),
                    _buildIndustrySection(),
                    const SizedBox(height: 100),
                    _buildNavigationButtons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      'Company Information',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }

  Widget _buildCompanyNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Name',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600, // Semi-bold label
            color: Colors.black, // Dark grey for labels
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _companyNameController,
          decoration: InputDecoration(
            hintText: 'Your company name',
            hintStyle: TextStyle(color: Colors.grey[500]), // Light grey hint
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Smaller padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: BorderSide(color: Colors.grey[300]!), // Light grey border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Focused border
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Description',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600, // Semi-bold label
            color: Colors.black, // Dark grey for labels
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _descriptionController,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: 'Details company',
            hintStyle: TextStyle(color: Colors.grey[500]), // Light grey hint
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Smaller padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: BorderSide(color: Colors.grey[300]!), // Light grey border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Focused border
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLocationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600, // Semi-bold label
            color: Colors.black, // Dark grey for labels
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _locationController,
          decoration: InputDecoration(
            hintText: 'Your location',
            hintStyle: TextStyle(color: Colors.grey[500]), // Light grey hint
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Smaller padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: BorderSide(color: Colors.grey[300]!), // Light grey border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Focused border
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.location_on_outlined, color: Colors.grey[700]),
              onPressed: () {
                // Implement location picker
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCompanyWebsiteField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company Website',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600, // Semi-bold label
            color: Colors.black, // Dark grey for labels
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _websiteController,
          decoration: InputDecoration(
            hintText: 'https://',
            hintStyle: TextStyle(color: Colors.grey[500]), // Light grey hint
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Smaller padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: BorderSide(color: Colors.grey[300]!), // Light grey border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Focused border
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIndustrySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Industry',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600, // Semi-bold label
            color: Colors.black, // Dark grey for labels
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _industryController,
          decoration: InputDecoration(
            hintText: 'Industry',
            hintStyle: TextStyle(color: Colors.grey[500]), // Light grey hint
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Smaller padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: BorderSide(color: Colors.grey[300]!), // Light grey border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black), // Focused border
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12), // Smaller padding
              side: BorderSide(color: Colors.grey[400]!), // Dark grey border
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
              ),
            ),
            child: Text(
              'Back',
              style: TextStyle(
                color: Color(0xFF1E225A), // Dark grey text
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1E225A), // Light grey background
              foregroundColor: Color(0xFF1E225A), // Dark grey text
              padding: const EdgeInsets.symmetric(vertical: 12), // Smaller padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
              ),
              elevation: 5, // Subtle shadow
            ),
            child: const Text('Next ￫', style: TextStyle(color: Colors.white,),
          ),
        ),
    )
      ],
    );
  }
}