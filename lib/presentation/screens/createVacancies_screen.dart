import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatevacanciesScreen extends StatefulWidget {
  const CreatevacanciesScreen({super.key});

  @override
  State<CreatevacanciesScreen> createState() => _CreatevacanciesScreenState();
}

class _CreatevacanciesScreenState extends State<CreatevacanciesScreen> {
  // Controllers for text fields
  final _jobTitleController = TextEditingController();
  final _jobDescriptionController = TextEditingController();
  final _jobLocationController = TextEditingController();
  final _employmentTypeController = TextEditingController();
  final _experienceLevelController = TextEditingController();
  final _applicationDeadlineController = TextEditingController();

  // Dispose controllers when the widget is removed
  @override
  void dispose() {
    _jobTitleController.dispose();
    _jobDescriptionController.dispose();
    _jobLocationController.dispose();
    _employmentTypeController.dispose();
    _experienceLevelController.dispose();
    _applicationDeadlineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top section with back button and title
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 18,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Add a function later
                    },
                  ),
                  // Title
                  const Text(
                    'Create Vacancies',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Empty container to balance the row
                  const SizedBox(width: 48), // Adjust width as needed
                ],
              ),
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Job Title
                  _buildSectionTitle('Job Title'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _jobTitleController,
                    'e.g., Senior UX Designer',
                  ),
                  const SizedBox(height: 24),

                  // Job Description
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionTitle('Job Description'),
                      Text(
                        '${_jobDescriptionController.text.length}/200',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _jobDescriptionController,
                    'Details Company',
                    maxLines: 4,
                  ),
                  const SizedBox(height: 24),

                  // Job Location
                  _buildSectionTitle('Job Location'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _jobLocationController,
                    'Your Locations',
                    icon: Icons.location_on_outlined,
                  ),
                  const SizedBox(height: 24),

                  // Employment Type
                  _buildSectionTitle('Employment Type'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _employmentTypeController,
                    'Employment type',
                    icon: Icons.business_center_outlined,
                  ),
                  const SizedBox(height: 24),

                  // Experience Level
                  _buildSectionTitle('Experience Level'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _experienceLevelController,
                    'Experience Level',
                    icon: Icons.star_outline,
                  ),
                  const SizedBox(height: 24),

                  // Application Deadline
                  _buildSectionTitle('Application Deadline'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _applicationDeadlineController,
                    'Application Deadline',
                    icon: Icons.calendar_today_outlined,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          // Next Button at the bottom
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Add functionality for the Next button
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E225A), // Button color
                foregroundColor: Colors.white, // Text color
                padding: const EdgeInsets.symmetric(vertical: 16), // Button padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              child: const Text(
                'Next ￫',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build section titles
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  // Helper method to build text fields with icons
  Widget _buildTextField(
      TextEditingController controller,
      String hint, {
        int maxLines = 1,
        IconData? icon,
      }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[500]),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        suffixIcon: icon != null
            ? Icon(
          icon,
          color: Colors.grey[700], // Icon color
        )
            : null,
      ),
    );
  }
}