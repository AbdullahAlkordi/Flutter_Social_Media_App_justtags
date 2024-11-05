// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OnBoardingItemsList extends StatefulWidget {
  const OnBoardingItemsList({
    super.key,
    required this.title,
    required this.text,
    required this.image,
  });
  final String title;
  final String text;
  final String image;

  @override
  State<OnBoardingItemsList> createState() => _OnBoardingItemsListState();
}

class _OnBoardingItemsListState extends State<OnBoardingItemsList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimition;
  late Animation<double> _fadeAnimition;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimition = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc));
    _fadeAnimition = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlideTransition(
          position: _slideAnimition,
          child: FadeTransition(
            opacity: _fadeAnimition,
            child: Image.asset(widget.image),
          ),
        ),
        const SizedBox(height: 14),
        SlideTransition(
          position: _slideAnimition,
          child: FadeTransition(
            opacity: _fadeAnimition,
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),

        const SizedBox(height: 14),
        // some small description
        SlideTransition(
          position: _slideAnimition,
          child: FadeTransition(
            opacity: _fadeAnimition,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
