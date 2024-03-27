import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:organico/theme.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => MapState();
}

class MapState extends State<SelectLocationScreen> {
  late BitmapDescriptor customIcon;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    // ignore: prefer_collection_literals
    markers = Set.from([]);
  }

  createMarker(context) {
    ImageConfiguration configuration = createLocalImageConfiguration(context);
    BitmapDescriptor.fromAssetImage(configuration, 'assets/pin_maps.png')
        .then((icon) {
      setState(() {
        customIcon = icon;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    final Color buttonTextColor;

    if (color == Colors.black) {
      buttonTextColor = Colors.white;
    } else {
      buttonTextColor = const Color(0xff171725);
    }
    createMarker(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Select Location',
            style: nunitoTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(-6.891515011969829, 107.61946551299091),
          zoom: 16.4746,
        ),
        onMapCreated: (GoogleMapController controller) {},
        markers: markers,
        onTap: (pos) {
          // ignore: avoid_print
          print(pos);
          Marker m = Marker(
              markerId: const MarkerId('1'), icon: customIcon, position: pos);

          setState(() {
            markers.add(m);
          });
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 260,
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/pin_street.png',
                            width: 24,
                            height: 28,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '3517 W. Gray St. Utica, Pennsylvania 57867',
                            style: nunitoTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 52,
                            decoration: const BoxDecoration(),
                            // ignore: deprecated_member_use
                            child: ElevatedButton(
                              onPressed: () {},
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              //   side: BorderSide(color: primaryColor, width: 1),
                              // ),
                              // color: primaryColor,
                              child: Text(
                                'Home',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: buttonTextColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 52,
                            decoration: const BoxDecoration(),
                            // ignore: deprecated_member_use
                            child: ElevatedButton(
                              // elevation: 0,
                              // hoverElevation: 0,
                              // focusElevation: 0,
                              // highlightElevation: 0,
                              onPressed: () {},
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              //   side: BorderSide(color: primaryColor, width: 1),
                              // ),
                              // color: Colors.transparent,
                              child: Text(
                                'Work',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 52,
                            decoration: const BoxDecoration(),
                            // ignore: deprecated_member_use
                            child: ElevatedButton(
                              // elevation: 0,
                              // hoverElevation: 0,
                              // focusElevation: 0,
                              // highlightElevation: 0,
                              onPressed: () {},
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              //   side: BorderSide(color: primaryColor, width: 1),
                              // ),
                              // color: Colors.transparent,
                              child: Text(
                                'Other',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        width: double.infinity,
                        height: 52,
                        decoration: const BoxDecoration(),
                        // ignore: deprecated_member_use
                        child: ElevatedButton(
                          onPressed: () {},
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(100),
                          //   side: BorderSide(color: primaryColor, width: 1),
                          // ),
                          // color: primaryColor,
                          child: Text(
                            'Save Address',
                            style: nunitoTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: buttonTextColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          decoration: const BoxDecoration(),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              isDense: true,
              hintText: ' Search Location',
              prefixIcon: Icon(
                Icons.search_outlined,
                color: greyColor,
              ),
              hintStyle: nunitoTextStyle.copyWith(
                fontWeight: FontWeight.w700,
                color: greyColor,
              ),
              filled: true,
              fillColor: Colors.white70,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                borderSide: BorderSide(color: greyColor, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                borderSide: BorderSide(color: primaryColor, width: 1),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
