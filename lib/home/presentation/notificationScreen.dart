import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:newapp/home/presentation/controllers/notification_controller.dart';
import 'package:newapp/home/presentation/state/notification_state.dart';
import 'package:provider/provider.dart';

class NotificationScrren extends StatefulWidget {
  const NotificationScrren({super.key});

  static Widget createProvider(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationController(),
      child: NotificationScrren(),
    );
  }

  @override
  State<NotificationScrren> createState() => _NotificationScrrenState();
}

//class _NewsPageState extends State<NewsPage> with AfterLayoutMixin<NewsPage>
class _NotificationScrrenState extends State<NotificationScrren>
    with AfterLayoutMixin<NotificationScrren> {
  NotificationController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller:
    Provider.of<NotificationController>(context, listen: false);
    print(Provider.of<NotificationController>(context, listen: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_controller);
    return Scaffold(
      body: Column(children: [
        Selector<NotificationController, NotificationState>(
            builder: (context, state, child) {
              return state.when(
                loading: () =>
                    Center(child: CircularProgressIndicator.adaptive()),
                loaded: (notif) => ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(notif[index].id ?? ''),
                    );
                  },
                  itemCount: notif.length,
                ),
                error: (message) => Center(
                  child: Text(message),
                ),
              );
            },
            selector: (_, NotificationController c) => c.state)
      ]),
    );
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await Provider.of<NotificationController>(context, listen: false)
        .NotificationData();
  }
}
