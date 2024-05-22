import 'package:flutter/cupertino.dart';

class MusicView extends StatefulWidget {
  const MusicView({super.key});

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('hello'),
    );
  }
}
