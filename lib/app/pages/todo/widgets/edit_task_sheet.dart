import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../domain/entities/task_entity.dart';
import '../../../../theme/app_theme.dart';
import '../bloc/task_bloc.dart';

Future<void> showEditTaskSheet(BuildContext context, TaskEntity task) {
  final bloc = context.read<TaskBloc>();
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider.value(
      value: bloc,
      child: _EditTaskSheet(task: task),
    ),
  );
}

class _EditTaskSheet extends StatefulWidget {
  final TaskEntity task;
  const _EditTaskSheet({required this.task});

  @override
  State<_EditTaskSheet> createState() => _EditTaskSheetState();
}

class _EditTaskSheetState extends State<_EditTaskSheet> {
  late TextEditingController _titleController;
  late String _workLocation;
  DateTime? _dueDate;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.task.title);
    _workLocation = widget.task.workLocation ?? 'Work from Home';
    _dueDate = DateTime.tryParse(widget.task.dueDate);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => _dueDate = picked);
  }

  void _submit() {
    if (_titleController.text.trim().isEmpty) return;
    context.read<TaskBloc>().add(TaskEvent.updateTask(
          id: widget.task.id,
          title: _titleController.text.trim(),
          dueDate:
              _dueDate?.toIso8601String().split('T').first ?? widget.task.dueDate,
          workLocation: widget.task.category == 'Work' ? _workLocation : null,
        ));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final isWork = widget.task.category == 'Work';
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
            Row(
              children: [
                const Icon(Icons.edit_outlined, size: 20),
                const SizedBox(width: 8),
                Text('Edit Task',
                    style: GoogleFonts.fraunces(fontSize: 20, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Task Name'),
            ),
            if (isWork) ...[
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                initialValue: _workLocation,
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
                    child: const Text('Save Changes'),
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
