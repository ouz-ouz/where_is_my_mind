import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haberler yoldaş"),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network("https://foto.haberler.com/haber/2015/03/31/savciyi-rehin-alan-dhkp-c-lilerin-kimlikleri-7141564_x_8685_o.jpg"),
                      ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text("UMUDUN ADI DHKP-C"),
                        subtitle: Text("ELİF ŞAFAK BAHTİYAR YIKILACAK SARAYLAR!"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("★★CEPHE VURUYOR★★"),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                              onPressed:  () async {
                                
                                await launch("https://www.youtube.com/watch?v=c8rx2dibT5c");
                              },
                              child: Text("Marş'a git")),
                        ],
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}