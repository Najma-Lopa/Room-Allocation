import 'package:flutter/material.dart';
import '../../utility/classroom_info.dart';
import '../../widgets/app_bar.dart';

class ClassRoomHomepage extends StatefulWidget {
  const ClassRoomHomepage({super.key});

  @override
  State<ClassRoomHomepage> createState() => _ClassRoomHomepageState();
}

class _ClassRoomHomepageState extends State<ClassRoomHomepage> {
  String? selectedDepartment;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  // Stores all allocated rooms with their time slots
  final Map<String, List<Map<String, TimeOfDay>>> allocatedRooms = {};

  // Stores current user's allocated time slots
  final List<Map<String, dynamic>> userAllocations = [];

  Future<void> pickTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  bool isTimeOverlap(TimeOfDay start1, TimeOfDay end1, TimeOfDay start2, TimeOfDay end2) {
    final start1Minutes = start1.hour * 60 + start1.minute;
    final end1Minutes = end1.hour * 60 + end1.minute;
    final start2Minutes = start2.hour * 60 + start2.minute;
    final end2Minutes = end2.hour * 60 + end2.minute;

    return start1Minutes < end2Minutes && end1Minutes > start2Minutes;
  }

  bool isRoomAllocated(String room) {
    if (!allocatedRooms.containsKey(room)) return false;

    for (var slot in allocatedRooms[room]!) {
      if (isTimeOverlap(startTime!, endTime!, slot['start']!, slot['end']!)) {
        return true;
      }
    }
    return false;
  }

  bool hasUserAllocatedTimeOverlap() {
    for (var slot in userAllocations) {
      if (isTimeOverlap(startTime!, endTime!, slot['start'], slot['end'])) {
        return true;
      }
    }
    return false;
  }

  void allocateRoom(String room) {
    setState(() {
      allocatedRooms.putIfAbsent(room, () => []);
      allocatedRooms[room]!.add({'start': startTime!, 'end': endTime!});
      userAllocations.add({'room': room, 'start': startTime!, 'end': endTime!});
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Room '$room' allocated successfully")),
    );
  }

  void resetForm() {
    setState(() {
      selectedDepartment = null;
      startTime = null;
      endTime = null;
      userAllocations.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> roomList =
        DepartmentData.departmentClassrooms[selectedDepartment] ?? [];

    return Scaffold(
      appBar: CustomAppBar(Title: "Room Allocation Page"),
      body: Column(
        children: [
          // Top form section
          SizedBox(
            height: 320,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    value: selectedDepartment,
                    hint: const Text("Select Department"),
                    items: DepartmentData.departmentList.map((department) {
                      return DropdownMenuItem(
                        value: department,
                        child: Text(department),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDepartment = value;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () => pickTime(context, true),
                    child: Text(startTime == null
                        ? "Pick Start Time"
                        : "Start Time: ${startTime!.format(context)}"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => pickTime(context, false),
                    child: Text(endTime == null
                        ? "Pick End Time"
                        : "End Time: ${endTime!.format(context)}"),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (selectedDepartment != null &&
                              startTime != null &&
                              endTime != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Room Search Completed")),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Please select all fields")),
                            );
                          }
                        },
                        child: const Text("Search Room"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: resetForm,
                        icon: const Icon(Icons.refresh),
                        label: const Text("Refresh View"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Room display section
          Expanded(
            child: roomList.isEmpty
                ? const Center(child: Text("No classrooms available"))
                : ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: roomList.length,
              itemBuilder: (context, index) {
                final room = roomList[index];
                final isAllocated = isRoomAllocated(room);

                return Card(
                  color: isAllocated ? Colors.red.shade100 : null,
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text(
                      room,
                      style: TextStyle(
                        color: isAllocated ? Colors.red : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(Icons.meeting_room_outlined),
                    trailing: ElevatedButton(
                      onPressed: (startTime == null || endTime == null)
                          ? null
                          : () {
                        if (isAllocated) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("This room is already allocated"),
                            ),
                          );
                        } else if (hasUserAllocatedTimeOverlap()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("You can't allocate multiple rooms at the same time"),
                            ),
                          );
                        } else {
                          allocateRoom(room);
                        }
                      },
                      child: const Text("Allocate"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
