import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Createvacancies2Screen extends StatefulWidget {
  const Createvacancies2Screen({super.key});

  @override
  State<Createvacancies2Screen> createState() => _Createvacancies2ScreenState();
}

class _Createvacancies2ScreenState extends State<Createvacancies2Screen> {
  // Controllers for text fields
  final _addSkillsController = TextEditingController();
  final _educationalRequirementsController = TextEditingController();
  final _minSalaryController = TextEditingController(); // For minimum salary
  final _maxSalaryController = TextEditingController(); // For maximum salary
  final _benefitsController = TextEditingController();
  final _companyDepartmentController = TextEditingController();
  final _reportingManagerController = TextEditingController();

  // Dispose controllers when the widget is removed
  @override
  void dispose() {
    _addSkillsController.dispose();
    _educationalRequirementsController.dispose();
    _minSalaryController.dispose();
    _maxSalaryController.dispose();
    _benefitsController.dispose();
    _companyDepartmentController.dispose();
    _reportingManagerController.dispose();
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
                      Navigator.pop(context);
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
                  // Skills Required
                  _buildSectionTitle('Skills Required'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _addSkillsController,
                    'Add skills',
                    icon: Icons.add,
                  ),
                  const SizedBox(height: 24),

                  // Educational Requirements
                  _buildSectionTitle('Educational Requirements'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _educationalRequirementsController,
                    'Education',
                    icon: Icons.keyboard_arrow_down_rounded,
                  ),
                  const SizedBox(height: 24),

                  // Salary Range
                  _buildSectionTitle('Salary Range'),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      // Minimum Salary
                      Expanded(
                        child: _buildTextField(
                          _minSalaryController,
                          '\$ 0',
                        ),
                      ),
                      const SizedBox(width: 16), // Spacing between the two fields
                      // Maximum Salary
                      Expanded(
                        child: _buildTextField(
                          _maxSalaryController,
                          '\$ 1000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Benefits
                  _buildSectionTitle('Benefits'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _benefitsController,
                    'List Benefits',
                  ),
                  const SizedBox(height: 24),

                  // Company Department
                  _buildSectionTitle('Company Department'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _companyDepartmentController,
                    'Select the department',
                    icon: Icons.keyboard_arrow_down_rounded,
                  ),
                  const SizedBox(height: 24),

                  // Reporting Manager
                  _buildSectionTitle('Reporting Manager'),
                  const SizedBox(height: 8),
                  _buildTextField(
                    _reportingManagerController,
                    'Reporting manager',
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