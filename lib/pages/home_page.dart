import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectbased/components/post_item.dart';
import 'package:projectbased/components/tool_bar.dart';
import 'package:projectbased/providor/post_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getPost();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Seifs test app',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'imageassets/location-pin-alt-1-svgrepo-com.svg',
              height: 35,
            ),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return postitem(
                post: value.list[index],
              );
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 9,
              );
            },
          );
        },
      ),
    );
  }
}
