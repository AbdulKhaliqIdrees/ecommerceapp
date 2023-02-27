import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/views/categories_screen/item_detail.dart';
import 'package:ecommerceapp/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';

class CategoriesDetail extends StatelessWidget {
  final String? tittle;
  const CategoriesDetail(this.tittle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGround(
      Scaffold(
        appBar: AppBar(
          title: Text(
            tittle!,
            style: const TextStyle(
              fontFamily: bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 120,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const Center(
                              child: Text(
                                "Baby Clothing",
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 300,
                  ),
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ItemDetail("Detail of Items");
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              const Spacer(),
                              const Text(
                                "Women Hand Bag",
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "\$800",
                                style: TextStyle(
                                  color: redColor,
                                  fontFamily: bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
