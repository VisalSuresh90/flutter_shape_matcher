import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class BalloonScaryShape extends StatelessWidget {
  final Color? color;
  final double? size;
  final Widget? child;
  const BalloonScaryShape({
    Key? key,
    this.color = kGreenColor,
    this.size = 50,
    this.child = const Text(''),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => _widgetView();
  _widgetView() => SizedBox(
        child: CustomPaint(
          size: Size(size!, size!),
          painter: RPSCustomPainter(color: color),
        ),
      );
}

class RPSCustomPainter extends CustomPainter {
  final Color? color;

  RPSCustomPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7383791, size.height * 0.09785581);
    path_0.cubicTo(size.width * 0.6798941, size.height * 0.03383938,
        size.width * 0.5974643, 0, size.width * 0.5000000, 0);
    path_0.cubicTo(
        size.width * 0.4025357,
        0,
        size.width * 0.3201037,
        size.height * 0.03383938,
        size.width * 0.2616209,
        size.height * 0.09785581);
    path_0.cubicTo(
        size.width * 0.2023744,
        size.height * 0.1627094,
        size.width * 0.1710573,
        size.height * 0.2553821,
        size.width * 0.1710573,
        size.height * 0.3658517);
    path_0.cubicTo(
        size.width * 0.1710573,
        size.height * 0.5355224,
        size.width * 0.2507506,
        size.height * 0.6405536,
        size.width * 0.3176074,
        size.height * 0.6987856);
    path_0.cubicTo(
        size.width * 0.3682853,
        size.height * 0.7429284,
        size.width * 0.4227749,
        size.height * 0.7699644,
        size.width * 0.4604367,
        size.height * 0.7826907);
    path_0.lineTo(size.width * 0.4446906, size.height * 0.8286723);
    path_0.cubicTo(
        size.width * 0.4435592,
        size.height * 0.8319755,
        size.width * 0.4440935,
        size.height * 0.8356249,
        size.width * 0.4461226,
        size.height * 0.8384652);
    path_0.cubicTo(
        size.width * 0.4481539,
        size.height * 0.8413056,
        size.width * 0.4514312,
        size.height * 0.8429929,
        size.width * 0.4549226,
        size.height * 0.8429929);
    path_0.lineTo(size.width * 0.4891817, size.height * 0.8429929);
    path_0.lineTo(size.width * 0.4891817, size.height * 0.9891839);
    path_0.cubicTo(
        size.width * 0.4891817,
        size.height * 0.9951587,
        size.width * 0.4940252,
        size.height,
        size.width * 0.4999978,
        size.height);
    path_0.cubicTo(
        size.width * 0.5059705,
        size.height,
        size.width * 0.5108140,
        size.height * 0.9951587,
        size.width * 0.5108140,
        size.height * 0.9891839);
    path_0.lineTo(size.width * 0.5108140, size.height * 0.8429929);
    path_0.lineTo(size.width * 0.5450730, size.height * 0.8429929);
    path_0.cubicTo(
        size.width * 0.5485645,
        size.height * 0.8429929,
        size.width * 0.5518418,
        size.height * 0.8413077,
        size.width * 0.5538730,
        size.height * 0.8384652);
    path_0.cubicTo(
        size.width * 0.5559043,
        size.height * 0.8356228,
        size.width * 0.5564365,
        size.height * 0.8319755,
        size.width * 0.5553051,
        size.height * 0.8286723);
    path_0.lineTo(size.width * 0.5395590, size.height * 0.7826907);
    path_0.cubicTo(
        size.width * 0.5772229,
        size.height * 0.7699666,
        size.width * 0.6317125,
        size.height * 0.7429306,
        size.width * 0.6823905,
        size.height * 0.6987856);
    path_0.cubicTo(
        size.width * 0.7492450,
        size.height * 0.6405536,
        size.width * 0.8289405,
        size.height * 0.5355202,
        size.width * 0.8289405,
        size.height * 0.3658517);
    path_0.cubicTo(
        size.width * 0.8289427,
        size.height * 0.2553843,
        size.width * 0.7976278,
        size.height * 0.1627116,
        size.width * 0.7383791,
        size.height * 0.09785581);
    path_0.close();
    path_0.moveTo(size.width * 0.4700609, size.height * 0.8213606);
    path_0.lineTo(size.width * 0.4812405, size.height * 0.7887196);
    path_0.cubicTo(
        size.width * 0.4890368,
        size.height * 0.7905389,
        size.width * 0.4954313,
        size.height * 0.7914431,
        size.width * 0.5000000,
        size.height * 0.7914431);
    path_0.cubicTo(
        size.width * 0.5045687,
        size.height * 0.7914431,
        size.width * 0.5109611,
        size.height * 0.7905389,
        size.width * 0.5187595,
        size.height * 0.7887196);
    path_0.lineTo(size.width * 0.5299369, size.height * 0.8213606);
    path_0.lineTo(size.width * 0.4700609, size.height * 0.8213606);
    path_0.close();
    path_0.moveTo(size.width * 0.6681845, size.height * 0.6824748);
    path_0.cubicTo(
        size.width * 0.5967677,
        size.height * 0.7446806,
        size.width * 0.5199861,
        size.height * 0.7698108,
        size.width * 0.4999978,
        size.height * 0.7698108);
    path_0.cubicTo(
        size.width * 0.4800118,
        size.height * 0.7698108,
        size.width * 0.4032301,
        size.height * 0.7446806,
        size.width * 0.3318133,
        size.height * 0.6824748);
    path_0.cubicTo(
        size.width * 0.2683442,
        size.height * 0.6271914,
        size.width * 0.1926874,
        size.height * 0.5273843,
        size.width * 0.1926874,
        size.height * 0.3658517);
    path_0.cubicTo(
        size.width * 0.1926896,
        size.height * 0.1535308,
        size.width * 0.3104449,
        size.height * 0.02163229,
        size.width * 0.5000000,
        size.height * 0.02163229);
    path_0.cubicTo(
        size.width * 0.6895572,
        size.height * 0.02163229,
        size.width * 0.8073104,
        size.height * 0.1535308,
        size.width * 0.8073104,
        size.height * 0.3658517);
    path_0.cubicTo(
        size.width * 0.8073104,
        size.height * 0.5273843,
        size.width * 0.7316537,
        size.height * 0.6271935,
        size.width * 0.6681845,
        size.height * 0.6824748);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color!;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4547150, size.height * 0.3905558);
    path_1.cubicTo(
        size.width * 0.4543624,
        size.height * 0.3905558,
        size.width * 0.4540076,
        size.height * 0.3905385,
        size.width * 0.4536528,
        size.height * 0.3905017);
    path_1.lineTo(size.width * 0.3356876, size.height * 0.3788700);
    path_1.cubicTo(
        size.width * 0.3320815,
        size.height * 0.3785152,
        size.width * 0.3288951,
        size.height * 0.3763801,
        size.width * 0.3271970,
        size.height * 0.3731807);
    path_1.cubicTo(
        size.width * 0.3254988,
        size.height * 0.3699791,
        size.width * 0.3255140,
        size.height * 0.3661437,
        size.width * 0.3272381,
        size.height * 0.3629573);
    path_1.lineTo(size.width * 0.3964982, size.height * 0.2349915);
    path_1.cubicTo(
        size.width * 0.3985381,
        size.height * 0.2312210,
        size.width * 0.4026288,
        size.height * 0.2290059,
        size.width * 0.4068773,
        size.height * 0.2293585);
    path_1.cubicTo(
        size.width * 0.4111475,
        size.height * 0.2297024,
        size.width * 0.4148121,
        size.height * 0.2325341,
        size.width * 0.4162225,
        size.height * 0.2365772);
    path_1.lineTo(size.width * 0.4646161, size.height * 0.3752726);
    path_1.cubicTo(
        size.width * 0.4652326,
        size.height * 0.3766354,
        size.width * 0.4655765,
        size.height * 0.3781453,
        size.width * 0.4655765,
        size.height * 0.3797375);
    path_1.cubicTo(
        size.width * 0.4655765,
        size.height * 0.3857080,
        size.width * 0.4607396,
        size.height * 0.3905471,
        size.width * 0.4547691,
        size.height * 0.3905536);
    path_1.cubicTo(
        size.width * 0.4547496,
        size.height * 0.3905558,
        size.width * 0.4547323,
        size.height * 0.3905558,
        size.width * 0.4547150,
        size.height * 0.3905558);
    path_1.close();
    path_1.moveTo(size.width * 0.3540080, size.height * 0.3589424);
    path_1.lineTo(size.width * 0.4389212, size.height * 0.3673140);
    path_1.lineTo(size.width * 0.4038618, size.height * 0.2668278);
    path_1.lineTo(size.width * 0.3540080, size.height * 0.3589424);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5452807, size.height * 0.3905558);
    path_2.cubicTo(
        size.width * 0.5419839,
        size.height * 0.3905558,
        size.width * 0.5388429,
        size.height * 0.3890502,
        size.width * 0.5367814,
        size.height * 0.3864283);
    path_2.cubicTo(
        size.width * 0.5344970,
        size.height * 0.3835274,
        size.width * 0.5338524,
        size.height * 0.3796618,
        size.width * 0.5350681,
        size.height * 0.3761768);
    path_2.lineTo(size.width * 0.5837797, size.height * 0.2365793);
    path_2.cubicTo(
        size.width * 0.5851901,
        size.height * 0.2325363,
        size.width * 0.5888568,
        size.height * 0.2297046,
        size.width * 0.5931248,
        size.height * 0.2293606);
    path_2.cubicTo(
        size.width * 0.5973756,
        size.height * 0.2290080,
        size.width * 0.6014641,
        size.height * 0.2312253,
        size.width * 0.6035040,
        size.height * 0.2349937);
    path_2.lineTo(size.width * 0.6727619, size.height * 0.3629595);
    path_2.cubicTo(
        size.width * 0.6744860,
        size.height * 0.3661459,
        size.width * 0.6745012,
        size.height * 0.3699813,
        size.width * 0.6728009,
        size.height * 0.3731829);
    path_2.cubicTo(
        size.width * 0.6711006,
        size.height * 0.3763823,
        size.width * 0.6679141,
        size.height * 0.3785174,
        size.width * 0.6643102,
        size.height * 0.3788722);
    path_2.lineTo(size.width * 0.5463428, size.height * 0.3905039);
    path_2.cubicTo(
        size.width * 0.5459881,
        size.height * 0.3905385,
        size.width * 0.5456333,
        size.height * 0.3905558,
        size.width * 0.5452807,
        size.height * 0.3905558);
    path_2.close();
    path_2.moveTo(size.width * 0.5961360, size.height * 0.2668278);
    path_2.lineTo(size.width * 0.5610723, size.height * 0.3673140);
    path_2.lineTo(size.width * 0.6459898, size.height * 0.3589424);
    path_2.lineTo(size.width * 0.5961360, size.height * 0.2668278);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5388126, size.height * 0.4796029);
    path_3.lineTo(size.width * 0.4611830, size.height * 0.4796029);
    path_3.cubicTo(
        size.width * 0.4574039,
        size.height * 0.4796029,
        size.width * 0.4538973,
        size.height * 0.4776301,
        size.width * 0.4519374,
        size.height * 0.4743982);
    path_3.cubicTo(
        size.width * 0.4499753,
        size.height * 0.4711685,
        size.width * 0.4498434,
        size.height * 0.4671470,
        size.width * 0.4515891,
        size.height * 0.4637940);
    path_3.lineTo(size.width * 0.4904039, size.height * 0.3892081);
    path_3.cubicTo(
        size.width * 0.4922665,
        size.height * 0.3856323,
        size.width * 0.4959656,
        size.height * 0.3833868,
        size.width * 0.5000000,
        size.height * 0.3833868);
    path_3.lineTo(size.width * 0.5000000, size.height * 0.3833868);
    path_3.cubicTo(
        size.width * 0.5040344,
        size.height * 0.3833868,
        size.width * 0.5077335,
        size.height * 0.3856323,
        size.width * 0.5095939,
        size.height * 0.3892081);
    path_3.lineTo(size.width * 0.5484066, size.height * 0.4637940);
    path_3.cubicTo(
        size.width * 0.5501523,
        size.height * 0.4671492,
        size.width * 0.5500203,
        size.height * 0.4711685,
        size.width * 0.5480583,
        size.height * 0.4743982);
    path_3.cubicTo(
        size.width * 0.5460984,
        size.height * 0.4776301,
        size.width * 0.5425918,
        size.height * 0.4796029,
        size.width * 0.5388126,
        size.height * 0.4796029);
    path_3.close();
    path_3.moveTo(size.width * 0.4790059, size.height * 0.4579706);
    path_3.lineTo(size.width * 0.5209920, size.height * 0.4579706);
    path_3.lineTo(size.width * 0.5000000, size.height * 0.4176329);
    path_3.lineTo(size.width * 0.4790059, size.height * 0.4579706);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4552147, size.height * 0.6349638);
    path_4.cubicTo(
        size.width * 0.4216197,
        size.height * 0.6349638,
        size.width * 0.3932858,
        size.height * 0.6308775,
        size.width * 0.3710045,
        size.height * 0.6228195);
    path_4.cubicTo(
        size.width * 0.3663060,
        size.height * 0.6211192,
        size.width * 0.3633813,
        size.height * 0.6164206,
        size.width * 0.3639329,
        size.height * 0.6114539);
    path_4.cubicTo(
        size.width * 0.3651140,
        size.height * 0.6008129,
        size.width * 0.3668468,
        size.height * 0.5824342,
        size.width * 0.3667732,
        size.height * 0.5757000);
    path_4.cubicTo(
        size.width * 0.3640454,
        size.height * 0.5715098,
        size.width * 0.3524592,
        size.height * 0.5638931,
        size.width * 0.3471225,
        size.height * 0.5626687);
    path_4.cubicTo(
        size.width * 0.3388806,
        size.height * 0.5687366,
        size.width * 0.3298729,
        size.height * 0.5776210,
        size.width * 0.3297755,
        size.height * 0.5777161);
    path_4.cubicTo(
        size.width * 0.3275279,
        size.height * 0.5799378,
        size.width * 0.3244259,
        size.height * 0.5810800,
        size.width * 0.3212741,
        size.height * 0.5808074);
    path_4.cubicTo(
        size.width * 0.3181266,
        size.height * 0.5805478,
        size.width * 0.3152473,
        size.height * 0.5789232,
        size.width * 0.3133977,
        size.height * 0.5763620);
    path_4.cubicTo(
        size.width * 0.3112756,
        size.height * 0.5734243,
        size.width * 0.2615192,
        size.height * 0.5038138,
        size.width * 0.2680521,
        size.height * 0.4507390);
    path_4.cubicTo(
        size.width * 0.2685670,
        size.height * 0.4465596,
        size.width * 0.2714614,
        size.height * 0.4430595,
        size.width * 0.2754677,
        size.height * 0.4417680);
    path_4.cubicTo(
        size.width * 0.2794718,
        size.height * 0.4404788,
        size.width * 0.2838697,
        size.height * 0.4416296,
        size.width * 0.2867273,
        size.height * 0.4447187);
    path_4.cubicTo(
        size.width * 0.2870518,
        size.height * 0.4450626,
        size.width * 0.3238375,
        size.height * 0.4831463,
        size.width * 0.4228766,
        size.height * 0.5069959);
    path_4.cubicTo(
        size.width * 0.4273263,
        size.height * 0.5080667,
        size.width * 0.4306209,
        size.height * 0.5118242,
        size.width * 0.4311012,
        size.height * 0.5163756);
    path_4.cubicTo(
        size.width * 0.4311163,
        size.height * 0.5165249,
        size.width * 0.4326284,
        size.height * 0.5307654,
        size.width * 0.4345018,
        size.height * 0.5439611);
    path_4.cubicTo(
        size.width * 0.4373075,
        size.height * 0.5451358,
        size.width * 0.4443423,
        size.height * 0.5467560,
        size.width * 0.4557512,
        size.height * 0.5467560);
    path_4.cubicTo(
        size.width * 0.4642937,
        size.height * 0.5467560,
        size.width * 0.4710387,
        size.height * 0.5458626,
        size.width * 0.4749823,
        size.height * 0.5449865);
    path_4.lineTo(size.width * 0.4749823, size.height * 0.5304539);
    path_4.cubicTo(
        size.width * 0.4749823,
        size.height * 0.5274990,
        size.width * 0.4761915,
        size.height * 0.5246716,
        size.width * 0.4783288,
        size.height * 0.5226317);
    path_4.cubicTo(
        size.width * 0.4804660,
        size.height * 0.5205939,
        size.width * 0.4833258,
        size.height * 0.5195469,
        size.width * 0.4862981,
        size.height * 0.5196486);
    path_4.cubicTo(
        size.width * 0.4863262,
        size.height * 0.5196508,
        size.width * 0.4896511,
        size.height * 0.5197979,
        size.width * 0.4952625,
        size.height * 0.5197979);
    path_4.cubicTo(
        size.width * 0.5167153,
        size.height * 0.5197979,
        size.width * 0.5897653,
        size.height * 0.5174248,
        size.width * 0.6290993,
        size.height * 0.4868995);
    path_4.cubicTo(
        size.width * 0.6314118,
        size.height * 0.4851062,
        size.width * 0.6343516,
        size.height * 0.4843231,
        size.width * 0.6372547,
        size.height * 0.4847363);
    path_4.cubicTo(
        size.width * 0.6401534,
        size.height * 0.4851473,
        size.width * 0.6427623,
        size.height * 0.4867178,
        size.width * 0.6444820,
        size.height * 0.4890887);
    path_4.cubicTo(
        size.width * 0.6500805,
        size.height * 0.4967963,
        size.width * 0.6567389,
        size.height * 0.5056612,
        size.width * 0.6607344,
        size.height * 0.5106496);
    path_4.cubicTo(
        size.width * 0.6645179,
        size.height * 0.5086702,
        size.width * 0.6695582,
        size.height * 0.5049322,
        size.width * 0.6718642,
        size.height * 0.5023103);
    path_4.cubicTo(
        size.width * 0.6689698,
        size.height * 0.4939257,
        size.width * 0.6658374,
        size.height * 0.4844961,
        size.width * 0.6658028,
        size.height * 0.4843880);
    path_4.cubicTo(
        size.width * 0.6648834,
        size.height * 0.4816212,
        size.width * 0.6651214,
        size.height * 0.4785970,
        size.width * 0.6664648,
        size.height * 0.4760076);
    path_4.cubicTo(
        size.width * 0.6678060,
        size.height * 0.4734182,
        size.width * 0.6701358,
        size.height * 0.4714800,
        size.width * 0.6729285,
        size.height * 0.4706342);
    path_4.cubicTo(
        size.width * 0.7006351,
        size.height * 0.4622214,
        size.width * 0.7169372,
        size.height * 0.4579598,
        size.width * 0.7213762,
        size.height * 0.4579598);
    path_4.cubicTo(
        size.width * 0.7224253,
        size.height * 0.4579598,
        size.width * 0.7233988,
        size.height * 0.4580766,
        size.width * 0.7243571,
        size.height * 0.4583146);
    path_4.cubicTo(
        size.width * 0.7293174,
        size.height * 0.4595541,
        size.width * 0.7327331,
        size.height * 0.4641012,
        size.width * 0.7325427,
        size.height * 0.4692108);
    path_4.cubicTo(
        size.width * 0.7324108,
        size.height * 0.4727801,
        size.width * 0.7283439,
        size.height * 0.5571698,
        size.width * 0.6472077,
        size.height * 0.6037636);
    path_4.cubicTo(
        size.width * 0.6430413,
        size.height * 0.6061604,
        size.width * 0.6377868,
        size.height * 0.6055136,
        size.width * 0.6343214,
        size.height * 0.6021758);
    path_4.cubicTo(
        size.width * 0.6342154,
        size.height * 0.6020741,
        size.width * 0.6236437,
        size.height * 0.5919091,
        size.width * 0.6049469,
        size.height * 0.5749905);
    path_4.cubicTo(
        size.width * 0.6002916,
        size.height * 0.5728900,
        size.width * 0.5821681,
        size.height * 0.5737812,
        size.width * 0.5678086,
        size.height * 0.5839073);
    path_4.cubicTo(
        size.width * 0.5701492,
        size.height * 0.5968304,
        size.width * 0.5731799,
        size.height * 0.6100889,
        size.width * 0.5732145,
        size.height * 0.6102360);
    path_4.cubicTo(
        size.width * 0.5738570,
        size.height * 0.6130438,
        size.width * 0.5733551,
        size.height * 0.6159945,
        size.width * 0.5718170,
        size.height * 0.6184303);
    path_4.cubicTo(
        size.width * 0.5702790,
        size.height * 0.6208661,
        size.width * 0.5678324,
        size.height * 0.6225858,
        size.width * 0.5650180,
        size.height * 0.6232110);
    path_4.cubicTo(
        size.width * 0.5628504,
        size.height * 0.6236869,
        size.width * 0.5114500,
        size.height * 0.6349617,
        size.width * 0.4552147,
        size.height * 0.6349638);
    path_4.close();
    path_4.moveTo(size.width * 0.3863505, size.height * 0.6050832);
    path_4.cubicTo(
        size.width * 0.4050256,
        size.height * 0.6105604,
        size.width * 0.4281375,
        size.height * 0.6133315,
        size.width * 0.4552125,
        size.height * 0.6133315);
    path_4.cubicTo(
        size.width * 0.4944016,
        size.height * 0.6133315,
        size.width * 0.5320223,
        size.height * 0.6074216,
        size.width * 0.5497456,
        size.height * 0.6041703);
    path_4.cubicTo(
        size.width * 0.5485234,
        size.height * 0.5983534,
        size.width * 0.5470416,
        size.height * 0.5909508,
        size.width * 0.5458323,
        size.height * 0.5838770);
    path_4.cubicTo(
        size.width * 0.5450882,
        size.height * 0.5795138,
        size.width * 0.5464315,
        size.height * 0.5750316,
        size.width * 0.5496201,
        size.height * 0.5712546);
    path_4.cubicTo(
        size.width * 0.5589631,
        size.height * 0.5601832,
        size.width * 0.5867109,
        size.height * 0.5531138,
        size.width * 0.6017085,
        size.height * 0.5531138);
    path_4.cubicTo(
        size.width * 0.6093144,
        size.height * 0.5531138,
        size.width * 0.6148480,
        size.height * 0.5547773,
        size.width * 0.6186315,
        size.height * 0.5581973);
    path_4.cubicTo(
        size.width * 0.6298175,
        size.height * 0.5683104,
        size.width * 0.6381243,
        size.height * 0.5760245,
        size.width * 0.6432576,
        size.height * 0.5808463);
    path_4.cubicTo(
        size.width * 0.6898601,
        size.height * 0.5507991,
        size.width * 0.7044424,
        size.height * 0.5055790,
        size.width * 0.7089484,
        size.height * 0.4827180);
    path_4.cubicTo(
        size.width * 0.7033846,
        size.height * 0.4842322,
        size.width * 0.6966656,
        size.height * 0.4861510,
        size.width * 0.6898817,
        size.height * 0.4881433);
    path_4.cubicTo(
        size.width * 0.6909979,
        size.height * 0.4914379,
        size.width * 0.6922331,
        size.height * 0.4950484,
        size.width * 0.6933580,
        size.height * 0.4982629);
    path_4.cubicTo(
        size.width * 0.6945543,
        size.height * 0.5016895,
        size.width * 0.6949913,
        size.height * 0.5071668,
        size.width * 0.6902711,
        size.height * 0.5138122);
    path_4.cubicTo(
        size.width * 0.6846380,
        size.height * 0.5217469,
        size.width * 0.6686864,
        size.height * 0.5335171,
        size.width * 0.6581926,
        size.height * 0.5335171);
    path_4.cubicTo(
        size.width * 0.6536736,
        size.height * 0.5335171,
        size.width * 0.6507100,
        size.height * 0.5316307,
        size.width * 0.6490227,
        size.height * 0.5300472);
    path_4.cubicTo(
        size.width * 0.6460114,
        size.height * 0.5272199,
        size.width * 0.6389939,
        size.height * 0.5180608,
        size.width * 0.6332657,
        size.height * 0.5103532);
    path_4.cubicTo(
        size.width * 0.5898648,
        size.height * 0.5378046,
        size.width * 0.5251043,
        size.height * 0.5413177,
        size.width * 0.4966167,
        size.height * 0.5414237);
    path_4.cubicTo(
        size.width * 0.4966167,
        size.height * 0.5414237,
        size.width * 0.4966124,
        size.height * 0.5513464,
        size.width * 0.4966037,
        size.height * 0.5515195);
    path_4.cubicTo(
        size.width * 0.4964026,
        size.height * 0.5556923,
        size.width * 0.4957882,
        size.height * 0.5683840,
        size.width * 0.4557533,
        size.height * 0.5683840);
    path_4.cubicTo(
        size.width * 0.4295263,
        size.height * 0.5683840,
        size.width * 0.4152945,
        size.height * 0.5620414,
        size.width * 0.4134514,
        size.height * 0.5495314);
    path_4.cubicTo(
        size.width * 0.4122292,
        size.height * 0.5412030,
        size.width * 0.4111411,
        size.height * 0.5322948,
        size.width * 0.4104337,
        size.height * 0.5261945);
    path_4.cubicTo(
        size.width * 0.3487254,
        size.height * 0.5104570,
        size.width * 0.3108127,
        size.height * 0.4895581,
        size.width * 0.2903464,
        size.height * 0.4753414);
    path_4.cubicTo(
        size.width * 0.2953607,
        size.height * 0.5050879,
        size.width * 0.3139407,
        size.height * 0.5374455,
        size.width * 0.3241338,
        size.height * 0.5534880);
    path_4.cubicTo(
        size.width * 0.3278935,
        size.height * 0.5502042,
        size.width * 0.3323152,
        size.height * 0.5465700,
        size.width * 0.3365529,
        size.height * 0.5436302);
    path_4.cubicTo(
        size.width * 0.3391964,
        size.height * 0.5417957,
        size.width * 0.3423677,
        size.height * 0.5408677,
        size.width * 0.3459738,
        size.height * 0.5408677);
    path_4.cubicTo(
        size.width * 0.3597103,
        size.height * 0.5408677,
        size.width * 0.3874883,
        size.height * 0.5584202,
        size.width * 0.3883385,
        size.height * 0.5733854);
    path_4.cubicTo(
        size.width * 0.3886976,
        size.height * 0.5797582,
        size.width * 0.3873391,
        size.height * 0.5951453,
        size.width * 0.3863505,
        size.height * 0.6050832);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = kBadgeColor.withOpacity(1);
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
