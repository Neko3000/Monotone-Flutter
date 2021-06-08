import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class AnimationState extends Equatable{

  @override
  List<Object> get props => [];
}

abstract class WidgetStateAnimatable{
  void buildAnimation();
  void animation(AnimationState state);
}

class BaseWidgetState<T extends StatefulWidget> extends State<T>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}