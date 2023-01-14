// import 'dart:developer';

// import 'package:company_project/model/location_model.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';

// class GoogleMapsUtils{
//   static Future<Position> getGeoLocationPosition() async {
//     LocationPermission permission;

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }
//     return await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//   }

//   static Future<LocationModel> getAddressFromCoordinaties(double latitude, double longitude) async {
//     List<Placemark> placemarks = await GeocodingPlatform.instance
//         .placemarkFromCoordinates(latitude, longitude);

//     Placemark place = placemarks[0];
//     LocationModel location = LocationModel(
//       name: place.name??'',
//       sublocality: place.subLocality??'',
//       city: place.locality ?? '',
//       country: place.country ?? '',
//       state: place.administrativeArea ?? '',
//       pincode: place.postalCode??'',
//       latitude: latitude.toPrecision(4), 
//       longitude: longitude.toPrecision(4), 
//     );
//     return location;
//   }

//   //Get device location
//   static Future<LocationModel?> getCurrentLocation() async {
//     try {
//       Position position = await getGeoLocationPosition();
//       // final location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
//       final location = await getAddressFromCoordinaties(
//         position.latitude,
//         position.longitude
//       );
//       return location;
//     } on Exception catch (e,s) {
//       log("Error : GoogleMapsUtils-> getCurrentLocation,", error:  e,stackTrace: s);
//       return Future.error(e);
//     }
//   }

// }


// Future<_LocationModel> getCurrentCity() async {
//     Position position = await _getGeoLocationPosition();
//     final location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
//     _LocationModel address = await getAddressFromLatLong(position);
//     return address;
//   }


// .getAddressFromCoordinaties(
//                     latlong[0], latlong[1]);


// final loc = await LocationService.getCurrentLocation();