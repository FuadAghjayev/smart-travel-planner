import 'package:flutter/material.dart';

class ItineraryItemDialog extends StatefulWidget {
  final String? initialDestination;
  final String? initialActivity;
  final DateTime? initialDate;
  final TimeOfDay? initialTime;

  const ItineraryItemDialog({
    Key? key,
    this.initialDestination,
    this.initialActivity,
    this.initialDate,
    this.initialTime,
  }) : super(key: key);

  @override
  _ItineraryItemDialogState createState() => _ItineraryItemDialogState();
}

class _ItineraryItemDialogState extends State<ItineraryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _destinationController;
  late TextEditingController _activityController;
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _destinationController = TextEditingController(text: widget.initialDestination ?? '');
    _activityController = TextEditingController(text: widget.initialActivity ?? '');
    _selectedDate = widget.initialDate ?? DateTime.now();
    _selectedTime = widget.initialTime ?? TimeOfDay.now();
  }

  @override
  void dispose() {
    _destinationController.dispose();
    _activityController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null) {
      setState(() => _selectedTime = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.initialDestination != null;

    return AlertDialog(
      title: Text(isEditing ? 'Edit Item' : 'Add New Item'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _destinationController,
                decoration: const InputDecoration(
                  labelText: 'Destination',
                  prefixIcon: Icon(Icons.place),
                ),
                validator: (value) =>
                value?.isEmpty == true ? 'Please enter a destination' : null,
                textCapitalization: TextCapitalization.sentences,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _activityController,
                decoration: const InputDecoration(
                  labelText: 'Activity',
                  prefixIcon: Icon(Icons.event),
                ),
                validator: (value) =>
                value?.isEmpty == true ? 'Please enter an activity' : null,
                textCapitalization: TextCapitalization.sentences,
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text('Date'),
                subtitle: Text(_selectedDate.toString().split(' ')[0]),
                onTap: _selectDate,
              ),
              ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text('Time'),
                subtitle: Text(_selectedTime.format(context)),
                onTap: _selectTime,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pop(
                context,
                {
                  'destination': _destinationController.text,
                  'activity': _activityController.text,
                  'date': _selectedDate,
                  'time': _selectedTime,
                },
              );
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}