import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';

import '../../widgets/cart/buttoncard.dart';

class QrScan extends StatefulWidget {
  const QrScan({Key? key}) : super(key: key);

  @override
  State<QrScan> createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  MobileScannerController cameraController = MobileScannerController();

  bool _screenOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DRAWERMAIN(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColor.fourthColor,
        title: const Text(
          "QR Scanner",
          style: TextStyle(fontFamily: "PlayfairDisplay"),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state as TorchState) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.toggleTorch(),
          ),
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state as CameraFacing) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      body: MobileScanner(
        allowDuplicates: true,
        controller: cameraController,
        onDetect: _foundBarcode,
      ),
    );
  }

  void _foundBarcode(Barcode barcode, MobileScannerArguments? args) {
    /// open screen
    if (!_screenOpened) {
      final String code = barcode.rawValue ?? "---";
      debugPrint('Barcode found! $code');
      _screenOpened = true;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoundCodeScreen(
              screenClosed: _screenWasClosed,
              value: code,
              total: code,
            ),
          ));
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}

class FoundCodeScreen extends StatefulWidget {
  final String value;
  final String total;
  final Function() screenClosed;
  const FoundCodeScreen({
    Key? key,
    required this.value,
    required this.screenClosed,
    required this.total,
  }) : super(key: key);

  @override
  State<FoundCodeScreen> createState() => _FoundCodeScreenState();
}

class _FoundCodeScreenState extends State<FoundCodeScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.value);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text("QR Code Verify"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            widget.screenClosed();
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
          ),
        ),
      ),
      endDrawer: DRAWERMAIN(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.value == "https://me-qr.com/MamGkZ4G")
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Accepted QR Code",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Text(widget.value, style: TextStyle(fontSize: 16,),),
                    Lottie.asset(AppImageAsset.acceptqr),
                    CustomButtonCart(
                      textbutton: "play",
                      onPressed: () {
                        Get.toNamed(AppRoute.spinwheel);
                      },
                    )
                  ],
                ),
              if (widget.value != "https://me-qr.com/MamGkZ4G")
                Column(
                  children: [
                    Text(
                      "Wrong QR Code",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Text(widget.value, style: TextStyle(fontSize: 16,),),
                    Lottie.asset(AppImageAsset.wrongqr),
                    CustomButtonCart(
                      textbutton: "Scan another QR",
                      onPressed: () {
                        Get.toNamed(AppRoute.qrscan);
                      },
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
