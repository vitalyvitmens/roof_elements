import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
          child: Text('Roof Elements'),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.favorite),
              SizedBox(width: 50),
              Text('Избранное'),
              SizedBox(width: 200),
              Icon(Icons.chevron_right),
            ],
          )
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: const [
          SizedBox(height: 5),
          _ImageCornice(),
          SizedBox(height: 5),
          _CorniceDescription(),
        ],
      ),
    );
  }
}

class _ImageCornice extends StatelessWidget {
  const _ImageCornice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class _CorniceDescription extends StatelessWidget {
  const _CorniceDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Test',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
