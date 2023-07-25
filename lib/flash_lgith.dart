import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';


class FlashLight extends StatefulWidget {
  const FlashLight({super.key});

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  final bgColor = const Color(0xff2c3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();
  

  @override
  Widget build(BuildContext context) {
    final Size =  MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Flash Light', style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                children: [
                  Image.asset(
                    isActive ? 'assets/torch_on.png' : "assets/torch_off.png",
                    width: 200,
                    height: 200,
                    color: isActive ? null : textColor.withOpacity(0.5),

                  ),
                  SizedBox(
                    height: Size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(onPressed: (){
                        controller.toggle();
                        isActive = !isActive;
                        setState(() {
                          
                        });
                      }, icon: const Icon(Icons.power_settings_new),
                      ),
                    )),
                ],
              ),
            )),
            const Text(
              'Developed by Mr_Samyakkamble',
            style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            SizedBox(
              height: Size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}