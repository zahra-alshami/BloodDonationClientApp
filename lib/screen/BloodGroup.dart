import 'package:flutter/material.dart';

import '../Api.dart';

class BloodGroups extends StatelessWidget {
  const BloodGroups({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent,title: Text('Blood Groups')),
      backgroundColor: Colors.grey[50],
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: size.height,
        
            child: FutureBuilder(
                future: Api.getBloodGroups(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data);
                    return ListView.builder(
                        itemCount: (snapshot.data.length != null)
                            ? snapshot.data.length
                            : 0,
                        itemBuilder: (context, i) {
                          return Card(
                  
           shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2.0),
  ),
                            child: ExpansionTile(
                                title: Text('Group '+snapshot.data[i]['group_Name'])),
                          );
                        });
                  } else
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                })),
    
    );
  }
}
