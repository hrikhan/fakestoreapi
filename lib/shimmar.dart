import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmarEffect extends StatelessWidget {
  const ShimmarEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
            baseColor: Colors.grey[100]!,
            highlightColor: Colors.grey,
            child: Container(
              height: 120,
              width: 180,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ));
      },
    );
  }
}


class ListShimmer extends StatelessWidget {
  const ListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // Prevents infinite height issues
      physics: NeverScrollableScrollPhysics(), // Ensures smooth UI if inside another scrollable widget
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!, // Light grey base
          highlightColor: Colors.grey[100]!, // Brighter highlight for shimmer effect
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 20,
              width: double.infinity, // Takes full width for better effect
              decoration: BoxDecoration(
                color: Colors.white, // Base color for shimmer to work properly
                borderRadius: BorderRadius.circular(8), // Rounded edges for a modern look
              ),
            ),
          ),
        );
      },
    );
  }
}