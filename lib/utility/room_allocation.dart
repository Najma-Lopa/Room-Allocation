import 'package:flutter/material.dart';

class RoomAllocation {
  final String roomName;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  RoomAllocation({
    required this.roomName,
    required this.startTime,
    required this.endTime,
  });

  bool overlaps(TimeOfDay newStart, TimeOfDay newEnd) {
    final newStartMinutes = newStart.hour * 60 + newStart.minute;
    final newEndMinutes = newEnd.hour * 60 + newEnd.minute;
    final startMinutes = startTime.hour * 60 + startTime.minute;
    final endMinutes = endTime.hour * 60 + endTime.minute;

    return !(newEndMinutes <= startMinutes || newStartMinutes >= endMinutes);
  }
}
