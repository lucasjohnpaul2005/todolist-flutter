import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../theme/app_theme.dart';
import '../bloc/task_bloc.dart';

Future<void> showAddTaskSheet(BuildContext context) {
  final bloc = context.read<TaskBloc>();
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider.value(
      value: bloc,
      child: const _AddTaskSheet(),
    ),
  );
}

class _AddTaskSheet extends StatefulWidget {
  const _AddTaskSheet();

  @override
  State<_AddTaskSheet> createState() => _AddTaskSheetState();
}

class _AddTaskSheetState extends State<_AddTaskSheet> {
  final _titleController = TextEditingController();
  String _category = 'Personal';
  String _workLocation = 'Work from Home';
  DateTime? _dueDate;

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => _dueDate = picked);
  }

  void _submit() {
    if (_titleController.text.trim().isEmpty) return;
    context.read<TaskBloc>().add(TaskEvent.createTask(
          title: _titleController.text,
          category: _category,
          dueDate: _dueDate?.toIso8601String().split('T').first ??
              DateTime.now().toIso8601String().split('T').first,
          workLocation: _category == 'Work' ? _workLocation : null,
        ));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
        decoration: const BoxDecoration(
          color: AppColors.paper,
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add New Task',
                style: GoogleFonts.fraunces(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            TextField(
              controller: _titleController,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Task name'),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _category,
              decoration: const InputDecoration(labelText: 'Category'),
              items: const [
                DropdownMenuItem(value: 'Work', child: Text('Work')),
                DropdownMenuItem(value: 'Personal', child: Text('Personal')),
              ],
              onChanged: (v) => setState(() => _category = v ?? 'Personal'),
            ),
            if (_category == 'Work') ...[
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _workLocation,
                decoration: const InputDecoration(labelText: 'Work Location'),
                items: const [
                  DropdownMenuItem(value: 'Work from Home', child: Text('Work from Home')),
                  DropdownMenuItem(
                      value: 'Work from Company', child: Text('Work from Company')),
                ],
                onChanged: (v) => setState(() => _workLocation = v ?? 'Work from Home'),
              ),
            ],
            const SizedBox(height: 12),
            InkWell(
              onTap: _pickDate,
              child: InputDecorator(
                decoration: const InputDecoration(labelText: 'Due Date'),
                child: Text(_dueDate == null
                    ? 'Select a date'
                    : _dueDate!.toIso8601String().split('T').first),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _submit,
                    child: const Text('Add Task'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
