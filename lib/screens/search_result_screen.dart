import 'package:flutter/material.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/search_result_card.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/search-view');
                          },
                          icon: const Icon(
                            Icons.chevron_left,
                          ),
                          iconSize: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          decoration: const BoxDecoration(),
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: ' Vegetables',
                              prefixIcon: const Icon(Icons.search_outlined),
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(
                                    color: Color(0xffF1F1F5), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100.0)),
                                borderSide:
                                    BorderSide(color: primaryColor, width: 1),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_alt_outlined,
                          ),
                          iconSize: 36,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      '   Result for : Vegetables',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Expanded(
                      child: SearchResultCard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
