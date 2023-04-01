import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vishwakarma_model.dart';
export 'vishwakarma_model.dart';

class VishwakarmaWidget extends StatefulWidget {
  const VishwakarmaWidget({Key? key}) : super(key: key);

  @override
  _VishwakarmaWidgetState createState() => _VishwakarmaWidgetState();
}

class _VishwakarmaWidgetState extends State<VishwakarmaWidget> {
  late VishwakarmaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VishwakarmaModel());
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
          'Chhatra Vishwakarma Awards',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 20.0,
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
                  'assets/images/chattraAwards.jfif',
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
                      'The ‘AICTE-ECI Chhatra Vishwakarma Awards’ are inspired by the spirit of engineering and creation patronized by Lord Vishwakarma, the ruling deity of construction practices in India. At the ‘AICTE-ECI Chhatra Vishwakarma Awards’, the innovations and achievements of individuals and institutions/ organizations shall be recognized and applauded. These awards are an embodiment of encouraging truly successful efforts that have made a mark on the industry or the society in terms of delivering better outputs & processes and creating higher benchmarks for the industry / society to help in nation building. The ‘AICTE-ECI Chhatra Vishwakarma Awards’ are an epitome for motivating individuals and institutions/ organizations to raise their performance in their specific domains leading to significant contribution towards the growth & development of the nation. Applications shall be short listed based on their conformity to the guidelines issued by AICTE &ECI and information furnished by nominees for specific categories. The recipients will be finalised based on the scrutiny of the applications by the jury & practical demonstrations by the contestants. ',
                      textAlign: TextAlign.justify,
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
