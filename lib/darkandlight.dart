import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getx extends StatelessWidget {
  const Getx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Container(
          child: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Team A'),
              subtitle: const Text('Please send invite !'),
              onTap: () {
                Get.defaultDialog(
                  title: "Invite Send",
                  // content: const Icon(Icons.person,size: 100,),
                  middleText: 'Invite send on there registered email id',
                  contentPadding: const EdgeInsets.all(50),
                  cancel: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Send'),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Team A'),
              subtitle: const Text('Please send invite !'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white70
                      
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            Navigator.pop(context);

                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Navigator.pop(context);
                          },
                        )
                      ]
                      ),
                  )
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
