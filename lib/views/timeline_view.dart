import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class TimeLineView extends StatelessWidget {
  const TimeLineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('Timeline'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(UniconsLine.plus_square))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/200/300?random=${index + 1}'))),
                    );
                  },
                );
              },
              child: Card(
                elevation: 5,
                shadowColor: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/200/300?random=${index + 100}'),
                        ),
                        title: Text('Anna Henry'),
                        subtitle: Text('1 minute ago'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      const Text(
                          'My last visit to Norway. Incredile scenes all over the place.Bergen was a special place to Me. '),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://picsum.photos/200/300?random=${index + 1}',
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(UniconsLine.thumbs_up)),
                              const SizedBox(
                                height: 15,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(UniconsLine.comment_message)),
                            ],
                          ),
                          const Icon(UniconsLine.telegram_alt)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 20),
    );
  }
}
