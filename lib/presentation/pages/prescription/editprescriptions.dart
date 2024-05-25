import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/domain/models/prescription.dart';

class EditPrescriptionPage extends ConsumerWidget {
  final Prescription prescription;
  const EditPrescriptionPage(this.prescription, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      appBar: AppBar(
        title: const Text('Editing Prescription'),
      ),
    );
  }
}
