import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'swayam_model.dart';
export 'swayam_model.dart';

class SwayamWidget extends StatefulWidget {
  const SwayamWidget({Key? key}) : super(key: key);

  @override
  _SwayamWidgetState createState() => _SwayamWidgetState();
}

class _SwayamWidgetState extends State<SwayamWidget> {
  late SwayamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwayamModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pushNamed('HomePage');
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFF0F1113),
            size: 32.0,
          ),
        ),
        title: Text(
          'MOOC’s platform',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/mooc2.jpg',
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 210.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Overview',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF0F1113),
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Hon’ble President of India, Hon’ble Shri Pranab Mukherjee attended the launch of SWAYAM, 32 SWAYAM Prabha DTH Channels and National Academic Depository at the National Convention on Digital Initiatives organized by Ministry of Human Resource Development, Government of India today (July 9, 2017) in New Delhi.\n\nHon’ble President said that he was happy that the SWAYAM portal has become fully functional which enables one to take courses offered by the best teachers, remaining where they are. SWAYAM should be a call to the pioneers amongst teachers to put new courses in the upcoming areas on this platform in the MOOCs format. It is also a call to the other teachers to use this material and improve their own teaching capacity. Ultimately, it should lead to better attainment levels in the students.',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
