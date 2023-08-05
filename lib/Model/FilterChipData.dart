import 'package:flutter/material.dart';

class FilterChipData{
  final String filtername;
  final String avatar;
  final bool isSelected;


  FilterChipData(this.isSelected, {required this.filtername, required this.avatar} );

}