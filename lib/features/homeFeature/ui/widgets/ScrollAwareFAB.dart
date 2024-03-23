import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollAwareFAB extends StatefulWidget {
  @override
  _ScrollAwareFABState createState() => _ScrollAwareFABState();
}

class _ScrollAwareFABState extends State<ScrollAwareFAB> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false; // Initially FAB is hidden

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    // If the user is scrolling up, show the FAB
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      if (!_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    } else {
      // If the user is scrolling down, hide the FAB
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: _isVisible, // Show FAB only when it's visible
        child: FloatingActionButton(
          onPressed: () {
            // Scroll to the top when FAB is pressed
            _scrollController.animateTo(
              0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: Icon(Icons.keyboard_arrow_up),
          backgroundColor: Colors.blue, // Background color of FAB
          foregroundColor: Colors.white, // Icon color of FAB
          elevation: 4, // Light shadow
        ),
      ),
    );
  }
}

