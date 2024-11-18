import 'package:cached_network_image/cached_network_image.dart';
import 'package:caraka/global_utils/belajar_utils/model/modeldraw.dart';
import 'package:flutter/material.dart';

class CustomD extends StatefulWidget {
  final Color warna;
  final String thumbnail;
  final String judul;
  final String modelgambar;

  const CustomD(
      {required this.warna,
      required this.thumbnail,
      required this.judul,
      required this.modelgambar});

  @override
  State<CustomD> createState() => _CustomDState();
}

class _CustomDState extends State<CustomD> {
  var historyDrawingPoints = <DrawingPoint>[];
  var drawingPoints = <DrawingPoint>[];

  var selectedColor = Colors.black;
  var selectedWidth = 2.0;

  DrawingPoint? currentDrawingPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFFF00000),
          )),
      backgroundColor: const Color(0xFFFF0000),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFFF0000),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 56.0),
                    child: Container(
                      height: 133,
                      width: 372,
                      decoration: BoxDecoration(
                          color: widget.warna,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CachedNetworkImage(
                                imageUrl: widget.thumbnail,
                                width: 100,
                                height: 100,
                                placeholder:(context, url) =>
                                Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Icon(Icons.error),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.judul,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.all(16),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 4))
                    ],
                  ),
                  child: Stack(
                    children: [
                      Image.asset(widget.modelgambar),
                      GestureDetector(
                        onPanStart: (details) {
                          setState(() {
                            currentDrawingPoint = DrawingPoint(
                                id: DateTime.now().microsecondsSinceEpoch,
                                offsets: [details.localPosition],
                                color: widget.warna,
                                width: selectedWidth);

                            if (currentDrawingPoint == null) return;
                            drawingPoints.add(currentDrawingPoint!);
                            historyDrawingPoints = List.of(drawingPoints);
                          });
                        },
                        onPanUpdate: (details) {
                          setState(() {
                            if (currentDrawingPoint == null) return;

                            currentDrawingPoint = currentDrawingPoint?.copyWith(
                              offsets: currentDrawingPoint!.offsets
                                ..add(details.localPosition),
                            );
                            drawingPoints.last = currentDrawingPoint!;
                            historyDrawingPoints = List.of(drawingPoints);
                          });
                        },
                        onPanEnd: (_) {
                          currentDrawingPoint = null;
                        },
                        child: CustomPaint(
                          painter: DrawingPainter(
                            drawingPoints: drawingPoints
                          ),
                          child: SizedBox(
                            width:  MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).padding.right,
                        right: 0,
                        bottom: MediaQuery.of(context).padding.bottom,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            inactiveColor: Colors.grey,
                            activeColor: widget.warna,
                            value: selectedWidth,
                            min: 1,
                            max: 20,
                            onChanged: (value) {
                              setState(() {
                                selectedWidth = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            heroTag: 'Undo',
                            backgroundColor: widget.warna,
                            foregroundColor: Colors.black,
                            mini: true,
                            onPressed: (){
                              if (drawingPoints.isNotEmpty && historyDrawingPoints.isNotEmpty) {
                                setState(() {
                                  drawingPoints.removeLast();
                                });
                              }
                            },
                            child: const Icon(Icons.undo),
                          ),
                          FloatingActionButton(
                            heroTag: 'Redo',
                            backgroundColor: widget.warna,
                            foregroundColor: Colors.black,
                            mini: true,
                            onPressed: (){
                              setState(() {
                                if (drawingPoints.length < historyDrawingPoints.length) {
                                  final index = drawingPoints.length;
                                  drawingPoints.add(historyDrawingPoints[index]);
                                }
                              });
                            },
                            child: const Icon(Icons.redo),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 36,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.navigate_before),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Abhâli dâ' animasi"),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawingPainter extends CustomPainter {
  final List<DrawingPoint> drawingPoints;

  DrawingPainter({required this.drawingPoints});

  @override
  void paint(Canvas canvas, Size size) {
    for (var drawingPoint in drawingPoints) {
      final paint = Paint()
        ..color = drawingPoint.color
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.width
        ..strokeCap = StrokeCap.round;

      for (var i = 0; i < drawingPoint.offsets.length; i++) {
        var notLastOffset = i != drawingPoint.offsets.length - 1;

        if (notLastOffset) {
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i + 1];
          canvas.drawLine(current, next, paint);
        } else {
          /// we do nothing
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
