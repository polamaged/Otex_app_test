import 'package:flutter/material.dart';

class ResponsivePriceDisplay extends StatelessWidget {
  const ResponsivePriceDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // We wrap the entire complex Row in a FittedBox
    return FittedBox(
      fit: BoxFit.scaleDown, // Ensures it only scales down, not up unnecessarily
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // The Main Price Line (as defined before)
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            
            children: [
               Text(
                '32,000,000',
                style: TextStyle(
                  fontSize: 14, 
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 8),
               Text(
                'جم/',
                style: TextStyle(
                  fontSize: 14, 
                  color: Colors.red,
                ),
              ),
                const SizedBox(width: 8),
              Text(
                '60',
                style: TextStyle(
                  fontSize: 12, 
                  color: Colors.grey[600], 
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey[600], 
                  decorationThickness: 2, 
                ),
              ),

             
             
            ],
          ),
          
          
        ],
      ),
    );
  }
}