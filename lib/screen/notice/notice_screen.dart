import 'package:appuenvigado/screen/home/home_provider.dart';
import 'package:appuenvigado/screen/notice/notice_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {

  NoticeProvider noticeProvider = NoticeProvider();

    @override
  void initState() {
    super.initState();
    //Provider.of<NoticeProvider>(context, listen: false).getImages();
    
  }

  @override
  Widget build(BuildContext context) {
    return image(context);
  }

  Widget image(BuildContext context){
      Provider.of<NoticeProvider>(context).getImages(context);
     noticeProvider = context.watch<NoticeProvider>();


    if(noticeProvider.img.isEmpty)
    {      
      return  const Center(child: Text("No imagen"));
    }else{

      return Column(
        children: <Widget>[
          ListView.builder(
            itemCount: noticeProvider.img.length,
            itemBuilder: (context, index) {
              return Image.network( noticeProvider.img[index]);
            },
          )
        ],
      );



      }
    }
}