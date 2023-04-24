import 'package:booking_system_flutter/component/back_widget.dart';
import 'package:booking_system_flutter/component/loader_widget.dart';
import 'package:booking_system_flutter/main.dart';
import 'package:booking_system_flutter/model/Video_model.dart';
import 'package:booking_system_flutter/network/rest_apis.dart';
import 'package:booking_system_flutter/screens/dashboard/component/Video_widget.dart';
import 'package:booking_system_flutter/screens/service/search_list_screen.dart';
import 'package:booking_system_flutter/utils/colors.dart';
import 'package:booking_system_flutter/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
//import 'package:nb_utils/nb_utils.dart';
import 'package:booking_system_flutter/plugin/nb_utils/nb_utils.dart';


class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  ScrollController scrollController = ScrollController();
  UniqueKey key = UniqueKey();

  int page = 1;
  List<VideoData> mainList = [];

  bool isEnabled = false;
  bool isLastPage = false;
  bool fabIsVisible = true;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    fetchAllVideoData();
    afterBuildCreated(() {
      setStatusBarColor(context.primaryColor);
    });
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if (!isLastPage) {
          page++;
          fetchAllVideoData();
        }
      }
    });
  }

  Future fetchAllVideoData() async {
    appStore.setLoading(true);

    await getVideoList(0,page.toString()).then((value) {
      if (page == 1) {
        mainList.clear();
        key = UniqueKey();
      }
      mainList.addAll(value.VideoList.validate());

      isLastPage = value.VideoList!.length != PER_PAGE_ITEM;

      setState(() {});
    }).catchError((e) {
      toast(e.toString());
    });

    appStore.setLoading(false);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        page = 1;
        return await fetchAllVideoData();
      },
      child: Scaffold(
        appBar: appBarWidget(
          language.lblVideo,
          textColor: Colors.white,
          color: primaryColor,
          showBack: Navigator.canPop(context),
          backWidget: BackWidget(),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              padding: EdgeInsets.all(16),
              child: AnimatedWrap(
                key: key,
                runSpacing: 16,
                spacing: 16,
                itemCount: mainList.length,
                listAnimationType: ListAnimationType.Scale,
                scaleConfiguration: ScaleConfiguration(duration: 300.milliseconds, delay: 50.milliseconds),
                itemBuilder: (_, index) {
                  VideoData data = mainList[index];

                  return GestureDetector(
                    onTap: () {
                      //SearchListScreen(VideoId: data.id.validate(), VideoName: data.name, isFromVideo: true).launch(context);
                    },
                    child: VideoWidget(videoData: data, width: context.width() / 4 - 20),
                  );
                },
              ),
            ),
            Observer(builder: (BuildContext context) => LoaderWidget().visible(appStore.isLoading.validate()))
          ],
        ),
      ),
    );
  }
}
