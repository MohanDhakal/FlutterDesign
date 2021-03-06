import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/map_controller.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/widget_map.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  //for draggable sheet control

  late BuildContext draggableContext;

  //map related

  Marker? source, destination;
  late GoogleMapController googleMapController;
  late Location location;
  Set<Marker> _markers = {};

  //destination title and subtitle
  String? dTitle;
  String? dSubtitle;
  String? exactCurrentLocationOfUser;

  //variables for ui control

  double min = 0.4, initial = 0.7, max = 0.7;
  var _expanding = true;
  double containerH = 585.h, containerW = 338.w;

  //controller
  final MapController mapController = Get.put(
    MapController(),
  );

  @override
  void initState() {
    location = new Location();
    mapController.getCurrentUserLocation(location).then((locationData) {
      mapController.getCurrentLocationName(locationData).then((placeMarkList) {
        geo.Placemark pm = placeMarkList.elementAt(0);
        setState(() {
          exactCurrentLocationOfUser = pm.locality;
          source = Marker(
              markerId: MarkerId("${locationData.latitude}"),
              infoWindow: InfoWindow(
                  title: "${pm.administrativeArea}", snippet: "${pm.locality}"),
              position: LatLng(locationData.latitude ?? 27.7172,
                  locationData.longitude ?? 85.3240));
        });
      });
      // print(locationData);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
          elevation: 0,
          // backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(CupertinoIcons.back)),
        ),
        backgroundColor: Colors.transparent,
        // extendBody: false,
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              markers: _markers,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              onLongPress: (latLong) async {
                geo.Placemark pm =
                    await mapController.getSelectedLocationNameWith(latLong);
                setState(() {
                  dTitle = pm.administrativeArea;
                  dSubtitle = pm.locality;
                  _markers.add(Marker(
                      markerId: MarkerId(latLong.longitude.toString()),
                      infoWindow: InfoWindow(
                          title: "${pm.administrativeArea}",
                          snippet: "${pm.locality}"),
                      position: latLong));
                });
                // print("object");
              },
              onMapCreated: (GoogleMapController mapController) {
                _markers.add(source ??
                    Marker(
                        markerId: MarkerId('m1'),
                        position: LatLng(27.7172, 85.3240)));

                googleMapController = mapController;
                // _markers.add(source);
                // _markers.add(destination);
              },
              initialCameraPosition:
                  CameraPosition(target: LatLng(27.7172, 85.3240), zoom: 15),
            ),
            SizedBox.expand(
              child: NotificationListener<DraggableScrollableNotification>(
                onNotification: (c) {
                  if (c.extent > max * 0.8) {
                    print('in betwwen');
                    setState(() {
                      _expanding = true;
                      initial = max;
                      // compressed = false;
                      // print(_expanding);
                    });
                  } else if (c.extent <= max * 0.8) {
                    print('down');

                    setState(() {
                      //expanding on drag
                      _expanding = false;
                      // compressed=true;
                    });
                  }
                  return false;
                },
                child: DraggableScrollableActuator(
                  child: DraggableScrollableSheet(
                      key: Key("$initial"),
                      minChildSize: min,
                      initialChildSize: initial,
                      // expand: false,
                      maxChildSize: max,
                      builder: (buildContext, controller) {
                        draggableContext = buildContext;
                        return Container(
                          width: containerW,
                          height: containerH,
                          margin:
                              EdgeInsets.only(left: 18, right: 18, bottom: 18),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 30, offset: Offset(0, 6))
                              ]),
                          child: SingleChildScrollView(
                            controller: controller,
                            // physics: AlwaysScrollableScrollPhysics(),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 11, bottom: 20),
                                  width: size.width * (86 / 375),
                                  height: 2,
                                  color: Color(0xFF9B9B9B),
                                ),
                                getCurrentAddressFeild(
                                    size, exactCurrentLocationOfUser),
                                _expanding
                                    ? getSearchYourAddressFeild(size)
                                    : SizedBox(),
                                _expanding == false
                                    ? Container(
                                        margin: EdgeInsets.only(
                                          top: 11,
                                        ),
                                      )
                                    : Container(
                                        margin: EdgeInsets.only(
                                            top: 11, bottom: 18),
                                        width: size.width * (290 / 375),
                                        height: 1,
                                        color: Color(0xFF9B9B9B),
                                        // decoration: BoxDecoration(
                                        //     borderRadius: BorderRadius.circular(3),
                                        //     border:
                                        //         Border.all(color: Color(0xFF9B9B9B))),
                                      ),
                                Container(
                                  width: 299.w,
                                  height: 50.h,
                                  margin: EdgeInsets.only(bottom: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF3F3F3),
                                      borderRadius: BorderRadius.circular(9),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x08000000),
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 39.w,
                                        width: 39.w,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: Colors.white),
                                        child: Icon(
                                          CupertinoIcons.house_fill,
                                          size: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            dTitle ?? "2 Saint Street. st",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            dSubtitle ??
                                                "Park In, United Kingdom",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 299.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF3F3F3),
                                      borderRadius: BorderRadius.circular(9),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x08000000),
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 39.w,
                                        width: 39.w,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: Colors.white),
                                        child: Icon(
                                          Icons.work,
                                          size: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2 Saint Street. st",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            "Park In, United Kingdom",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                (_expanding == false)
                                    ? Container(
                                        margin: EdgeInsets.only(
                                          top: 18,
                                        ),
                                      )
                                    : Container(
                                        margin: EdgeInsets.only(top: 11),
                                        width: size.width * (290 / 375),
                                        height: 1,
                                        color: Color(0xFF9B9B9B),
                                      ),
                                _expanding
                                    ? GestureDetector(
                                        onTap: () {
                                          print(_expanding);
                                          setState(() {
                                            initial = _expanding ? min : max;
                                            _expanding = !_expanding;
                                            // print(initial);
                                          });
                                        },
                                        child: getSetOnMapFeild(size))
                                    : SizedBox()
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}
