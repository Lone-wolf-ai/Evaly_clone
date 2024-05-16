import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/allscreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/cancelledscreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/confirmscreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/delivered.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/dispatched.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/inspection.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/placescreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/readytodispatch.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/pages/retrunscreen.dart';

class TabScreens {
  static const tabScreen = [
    AllScreen(),
    PlacedScreen(),
    ConfirmedScreen(),
    Readytodispatch(),
    DispatchedScreen(),
    Deliverd(),
    InspectionScreen(),
    ReturnScreens(),
    Cancelled()
  ];
}
