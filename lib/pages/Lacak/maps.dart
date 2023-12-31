import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(-3.316694, 114.590111),
        initialZoom: 12,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(markers: [
          Marker(
              point: LatLng(-3.316694, 114.590111),
              width: 80,
              height: 80,
              child: Icon(
                Icons.location_on,
                color: Colors.red,
                size: 50,
              ))
        ]),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
      ],
    );
  }
}
