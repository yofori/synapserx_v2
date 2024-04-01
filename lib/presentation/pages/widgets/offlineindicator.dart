import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/connectivity_change_provider.dart';

class OfflineIndicator extends ConsumerWidget {
  const OfflineIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityStream = ref.watch(streamProvider);
    return connectivityStream.when(
      data: (data) => data
          ? buildEmptySizedBox(context)
          : Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              padding: const EdgeInsets.all(3),
              alignment: Alignment.center,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    size: 16,
                    Icons.cloud_off,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'You are disconnected from synapseRx',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
      error: (error, stackTrace) => buildEmptySizedBox(context),
      loading: () => buildEmptySizedBox(context),
    );
  }

  SizedBox buildEmptySizedBox(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 0,
    );
  }
}
