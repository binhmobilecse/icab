import 'package:flutter/material.dart';

class OnboardingChildView extends StatelessWidget {
  const OnboardingChildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildSkipButton(),
              _buildImages(),
              _buildIndicators(),
              _buildContent(),
              Spacer(), // Sử dụng Spacer để đẩy nút xuống dưới cùng
              _buildNextPrevButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 15),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "SKIP",
          style: TextStyle(color: Colors.white.withOpacity(0.44), fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildImages() {
    return Image.asset(
      "assets/image/onboarding_1.png",
      height: 271,
      width: 296,
    );
  }

  Widget _buildIndicators() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 27,
            height: 4,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(56))),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 27,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(56))),
          ),
          Container(
            width: 27,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(56))),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const Text(
            "Manage your tasks",
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            child: Text(
              "You can easily manage all of your daily tasks in DoMe for free",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.87), fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNextPrevButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "BACK",
              style: TextStyle(
                color: Colors.white.withOpacity(0.44),
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              "NEXT",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
