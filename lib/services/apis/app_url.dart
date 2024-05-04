abstract class AppUrl {
  static const String baseUrl = "https://ecommerce.c3group.in/api/";
  static AppUrlEndpoints get authEndPoints => _AuthEndPoints();
}

abstract class AppUrlEndpoints {
  String get register;
  String get login;
  String get otp;
  String get appBanner;
  String get appCategories;
  String get appProducts;
  String get aadhaarUpdate;
  String get addToCart;
  String get viewInCart;
  String get cartProductQtyUpdate;
  String get deleteCartData;
  String get checkoutApi;
  String get addService;
  String get serviceList;
  String get myServiceRequest;
  String get orderHistory;
}

class _AuthEndPoints implements AppUrlEndpoints {
  @override
  String get register => "register_new";

  @override
  String get login => "valid_new";

  @override
  String get otp => "login_new";

  @override
  String get appBanner => "banner.php";

  @override
  String get appCategories => "topcat.php";

  @override
  String get appProducts => "product-single";

  @override
  String get aadhaarUpdate => "register_new_adhar";

  @override
  String get addToCart => "addtocart_new";

  @override
  String get viewInCart => "view_cart_new";

  @override
  String get cartProductQtyUpdate => "amngquan";

  @override
  String get checkoutApi => "checkout";

  @override
  String get addService => "service_req";

  @override
  String get serviceList => "service";

  @override
  String get deleteCartData => "delete_cart_single_product_new";

  @override
  String get myServiceRequest => "service_view";

  @override
  String get orderHistory => "view_orders";
}
