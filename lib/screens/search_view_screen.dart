import 'package:flutter/material.dart';
import 'package:organico/models/recent_model.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/recent_card.dart';

class SearchViewScreen extends StatelessWidget {
  const SearchViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: TextField(
                      onTap: () {
                        Navigator.pushNamed(context, '/search-result');
                      },
                      autocorrect: true,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: ' Search Anything Here',
                        prefixIcon: const Icon(Icons.search_outlined),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                          borderSide:
                              BorderSide(color: Color(0xffF1F1F5), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                          borderSide: BorderSide(color: primaryColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                'Recent',
                style: nunitoTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              RecentCard(Recent(id: 1, key: 'Onion')),
              RecentCard(Recent(id: 2, key: 'Watermelon')),
              RecentCard(Recent(id: 3, key: 'Blackurrant')),
              RecentCard(Recent(id: 4, key: 'Mushroom')),
              const SizedBox(
                height: 52,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
