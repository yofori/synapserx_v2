import 'package:flutter/material.dart';
import 'package:synapserx_v2/presentation/pages/labrequest/displaylabrequest_page.dart';
import 'package:synapserx_v2/presentation/pages/prescription/displayprescription_page.dart';

class TransactionTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String transactionType;
  final String transactionId;
  final String transactionRef;
  const TransactionTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.transactionType,
      required this.transactionId,
      required this.transactionRef});

  @override
  Widget build(BuildContext context) {
    String assetString = '';
    switch (transactionType) {
      case "Prescription":
        {
          assetString = 'assets/images/icons8-prescription-48.png';
        }
        break;
      case "Laboratory":
        {
          assetString = 'assets/images/icons8-test-tube-40.png';
        }
        break;
      case "Radiology":
        {
          assetString = 'assets/images/icons8-radioactive-48.png';
        }
        break;
      default:
        {
          assetString = 'assets/images/icons8-decision-40.png';
        }
        break;
    }
    return ListTile(
      onTap: () {
        if (transactionType == 'Prescription') {
          final prescriptionIdRef = transactionRef.toString();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DisplayPrescriptionPage(
                        prescriptionRef: prescriptionIdRef,
                      )));
        } else if (transactionType == 'Laboratory') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DisplayLabRequestPage()));
        }
      },
      leading: Image.asset(
        assetString,
        width: 32,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
