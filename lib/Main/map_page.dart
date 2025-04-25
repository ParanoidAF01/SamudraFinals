import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OpenStreetMap with Markers')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(20.5937, 78.9629), // Center of India
          zoom: 5.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'], // OpenStreetMap subdomains
            tileSize: 256, // Tile size
          ),
          MarkerLayer(
            markers: [
              // Mumbai
              Marker(
                point: LatLng(19.0760, 72.8777),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
              // Chennai
              Marker(
                point: LatLng(13.0827, 80.2707),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.yellow, size: 30),
              ),
              // Kolkata
              Marker(
                point: LatLng(22.5726, 88.3639),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.red, size: 30),
              ),
              // Kochi
              Marker(
                point: LatLng(9.9312, 76.2673),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
              // Visakhapatnam
              Marker(
                point: LatLng(17.6868, 83.2185),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.yellow, size: 30),
              ),
              // Goa
              Marker(
                point: LatLng(15.2993, 74.1240),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
              // Kanyakumari
              Marker(
                point: LatLng(8.0883, 77.5385),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
              // Paradip
              Marker(
                point: LatLng(20.3167, 86.6086),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.red, size: 30),
              ),
              // Diu
              Marker(
                point: LatLng(20.7141, 70.9870),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
              // Port Blair
              Marker(
                point: LatLng(11.6234, 92.7265),
                builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}