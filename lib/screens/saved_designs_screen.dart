import 'package:flutter/material.dart';

class SavedDesignsScreen extends StatelessWidget {
  const SavedDesignsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.save_alt,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          const Text(
            'No saved designs yet',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Navigate to catalog
              Navigator.pushNamed(context, '/catalog');
            },
            child: const Text('Browse Catalog'),
          ),
        ],
      ),
    );
  }
} 