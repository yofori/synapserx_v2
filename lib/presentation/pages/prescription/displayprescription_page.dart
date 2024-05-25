import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:synapserx_v2/common/pdf_api.dart';
import 'package:synapserx_v2/common/pdf_prescription_api.dart' as pdfgen;
import 'package:synapserx_v2/domain/models/prescription.dart';
import 'package:synapserx_v2/presentation/pages/prescription/editprescriptions.dart';
import 'package:synapserx_v2/presentation/view_model/prescriptions/prescriptions_provider.dart';

final retrievedRxProvider = StateProvider<Prescription>((ref) =>
    Prescription(pxId: '', pxSurname: '', pxFirstname: '', pxgender: ''));

class DisplayPrescriptionPage extends StatelessWidget {
  final String prescriptionRef;
  const DisplayPrescriptionPage({super.key, required this.prescriptionRef});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        height: 94,
        child: SizedBox(
            //height: 70, //set your height here
            width: double.maxFinite, //set your width here
            child: PrescriptionActionBar()),
      ),
      appBar: AppBar(title: (const Text('Prescription'))),
      body: DisplayedPrescription(prescriptionId: prescriptionRef),
    );
  }
}

class DisplayedPrescription extends ConsumerWidget {
  final String prescriptionId;
  const DisplayedPrescription({super.key, required this.prescriptionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prescription = ref.watch(fetchPrescriptionProvider(prescriptionId));
    return prescription.when(
      data: (retrievedPrescription) {
        Future(() {
          ref
              .read(retrievedRxProvider.notifier)
              .update((state) => state = retrievedPrescription);
        });

        return SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.zero,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Patient Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                          textAlign: TextAlign.left,
                          'Name: ${retrievedPrescription.pxFirstname} ${retrievedPrescription.pxSurname}')),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        textAlign: TextAlign.left,
                        'Age / Gender: ${retrievedPrescription.pxAge}yrs / ${toBeginningOfSentenceCase(retrievedPrescription.pxgender)} '),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        textAlign: TextAlign.left,
                        'Prescription Date: ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(retrievedPrescription.createdAt.toString()))}'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        textAlign: TextAlign.left,
                        'Prescription Status: ${(retrievedPrescription.status)}'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: buildPrescription(context, retrievedPrescription)),
                  Center(child: buildFooter(retrievedPrescription)),
                  const SizedBox(
                    height: 20,
                  ),
                ])));
      },
      error: (err, stack) => Text(err.toString()),
      loading: () => const Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: SpinKitThreeBounce(
              color: Colors.purple,
            ),
          )),
    );
  }
}

Widget buildPrescription(BuildContext context, Prescription prescription) {
  double width = MediaQuery.of(context).size.width;
  int i = 1;
  List<DataColumn> createColumns() {
    return [
      DataColumn(
          label: Container(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              alignment: Alignment.bottomLeft,
              //width: width * .05,
              height: 20,
              child: const Text('#'))),
      DataColumn(
          label: Container(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              alignment: Alignment.bottomLeft,
              //width: width * .38,
              height: 20,
              child: const Text('Name of Medication'))),
      DataColumn(
          label: Container(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              alignment: Alignment.bottomLeft,
              //width: width * .15,
              height: 20,
              child: const Text('Dose'))),
      DataColumn(
          label: Container(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              alignment: Alignment.bottomCenter,
              //width: width * .15,
              height: 20,
              child: const Text('Dosage'))),
      DataColumn(
          label: Container(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              alignment: Alignment.bottomLeft,
              //width: width * .19,
              height: 20,
              child: const Text('Duration'))),
    ];
  }

  List<DataRow> createrows() {
    return prescription.medications!
        .map((item) => DataRow(cells: [
              DataCell(Container(
                  margin: const EdgeInsets.all(3),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '${(i++)}',
                    softWrap: true,
                  ))),
              DataCell(Container(
                margin: const EdgeInsets.all(3),
                alignment: Alignment.topLeft,
                child: Text(
                  '${item.drugName} ${item.directionOfUse == null || item.directionOfUse.toString().trim() == '' ? '' : '\n \n Sig: ${item.directionOfUse.toString()}'}',
                  softWrap: true,
                ),
              )),
              DataCell(Container(
                  margin: const EdgeInsets.all(3),
                  alignment: Alignment.topLeft,
                  child: Text('${item.dose} ${item.dosageUnits}',
                      softWrap: true))),
              DataCell(Container(
                  margin: const EdgeInsets.all(3),
                  alignment: Alignment.topCenter,
                  child: Text(
                    '${item.dosageRegimen}',
                    softWrap: true,
                  ))),
              DataCell(Container(
                  margin: const EdgeInsets.all(3),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '${item.duration} ${item.durationUnits}',
                    softWrap: true,
                  ))),
            ]))
        .toList();
  }

  return SizedBox(
    width: width,
    child: DataTable(
        //headingTextStyle: const TextStyle(color: Colors.white, fontSize: 14),
        showBottomBorder: true,
        headingRowHeight: 30,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey),
        dataRowMaxHeight: 75,
        border: TableBorder.all(width: 0.5),
        columnSpacing: 0,
        horizontalMargin: 0,
        columns: createColumns(),
        rows: createrows()),
  );
}

buildSimpleText({
  required String title,
  required String value,
}) {
  const style = TextStyle(fontWeight: FontWeight.bold);

  return Align(
    alignment: Alignment.bottomLeft,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: Text(title, style: style),
        ),
        const SizedBox(width: 5),
        Text(value),
      ],
    ),
  );
}

Widget buildFooter(Prescription prescription) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // const Divider(
        //   thickness: 1,
        // ),
        const SizedBox(
          height: 20,
        ),
        buildSimpleText(
            title: 'Prescriber:',
            value: prescription.prescriberName.toString()),
        const SizedBox(height: 5),
        buildSimpleText(
            title: 'MDC Reg No:',
            value: prescription.prescriberMDCRegNo.toString()),
      ],
    );

class PrescriptionActionBar extends ConsumerWidget {
  const PrescriptionActionBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prescription = ref.watch(retrievedRxProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(children: <Widget>[
          IconButton(
              icon: const Icon(Icons.share),
              tooltip: 'Share Prescription',
              onPressed: () async {
                final pdfFile =
                    await pdfgen.PdfPrescriptionApi.generate(prescription);
                // ignore: use_build_context_synchronously
                PdfApi.sharePDF(context, pdfFile, 'Your Prescription');
                //PdfApi.openFile(pdfFile);
              }),
          const Text(
            'Share ',
            textAlign: TextAlign.center,
          ),
        ]),
        Column(children: [
          IconButton(
              icon: const Icon(Icons.preview),
              tooltip: 'Preview Prescription',
              onPressed: () async {
                final pdfFile =
                    await pdfgen.PdfPrescriptionApi.generate(prescription);
                if (context.mounted) {
                  await PdfApi.previewPDF(context, pdfFile);
                }
              }),
          const Text(
            'Preview',
            textAlign: TextAlign.center,
          ),
        ]),
        Column(children: [
          IconButton(
              icon: const Icon(Icons.edit),
              tooltip: 'Edit Prescription',
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditPrescriptionPage(prescription)));
              }),
          const Text(
            'Edit ',
            textAlign: TextAlign.center,
          ),
        ]),
        Column(children: [
          IconButton(
              icon: const Icon(Icons.delete),
              tooltip: 'Delete Prescription',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      'Confirm Action',
                      textAlign: TextAlign.center,
                    ),
                    content: const Text(
                      'Are you sure you want to delete this prescription? This cannot be undone',
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () async {
                            // String prescriptionID =
                            //     widget.prescription.sId.toString();
                            // await _dioClient
                            //     .deletePrescription(
                            //         prescriptionID: prescriptionID)
                            //     .whenComplete(() => {
                            //           Navigator.pop(context),
                            //           widget.notifyParent(3),
                            //           ScaffoldMessenger.of(context)
                            //               .showSnackBar(SnackBar(
                            //             content: const Text(
                            //                 'Prescription deleted'),
                            //             backgroundColor:
                            //                 Colors.green.shade300,
                            //           ))
                            //         });
                          },
                          child: const Text(
                            'Delete',
                          ))
                    ],
                  ),
                );
              }),
          const Text(
            'Delete ',
            textAlign: TextAlign.center,
          ),
        ]),
        Column(children: [
          IconButton(
            icon: const Icon(Icons.copy),
            tooltip: 'Renew Prescription',
            onPressed: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EditPrescriptionPage(prescription)));
            },
          ),
          const Text(
            'Renew',
            textAlign: TextAlign.center,
          ),
        ]),
      ],
    );
  }
}
