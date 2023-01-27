import 'package:flutter/material.dart';
import 'package:flutter_app_c7/model/apimanger.dart';
import 'package:flutter_app_c7/model/sourcesResponse.dart';
import 'package:flutter_app_c7/quran_screen/quran_tabs.dart';
import 'package:flutter_app_c7/quran_screen/text_api.dart';

class SuraApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManger.getSource(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Column(
              children: [
                Text('Something went wrong'),
                TextButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          } else if (snapshot.data?.status != 'OK') {
            // server has code and message
            return Column(
              children: [
                Text('${snapshot.error}'),
                TextButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          } else {
            var sourceList = snapshot.data?.data ?? [];
            return ListView.separated(
              itemBuilder: (context , index) {
                return Text_api(title: sourceList[index].name??'',index: index,);
              },
              itemCount: sourceList.length,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 2,
                );
              },
            );
          }
        });
  }
}
