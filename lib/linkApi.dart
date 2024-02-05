class AppLink {
  static const String server = "http://192.168.50.69/App";
  static const String imageststatic = "http://192.168.50.69/App/uploads";
// users
  static const String test = "$server/test.php";
// _____________________________auth________________________________________________________
  static const String signup = "$server/auth/signup.php";
  static const String verifyCodeSignup = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";
    static const String update = "$server/auth/update.php";

  // _____________________________forget password________________________________________________________

  static const String checkmail = "$server/forgetpassword/checkemail.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  // _____________________________________________________________________________________
  
}
// _____________________________________________________________________________________
class StoreLink {
  static const String serverStore = "http://192.168.50.69/App";
  static const String imagestatic = "http://192.168.50.69/App/uploads";
  /////////////////////////////////////////////////////////////////////////////////////
  static const String storehome = "$serverStore/homeStore.php";
// ______________________________________Imagessssss__________________________________________
  static const String imagescategories = "$imagestatic/categories";
  static const String imagesitems = "$imagestatic/items";
    static const String imagesmain = "$imagestatic/main";

  // Items______________________________________________________________________________
  static const String items = "$serverStore/items/items.php";
  static const String search = "$serverStore/items/Search.php";
  // Cart
  static const String cartview = "$serverStore/cart/view.php";
  static const String cartadd = "$serverStore/cart/add.php";
  static const String cartdelete = "$serverStore/cart/delete.php";
  static const String cartgetcountitems = "$serverStore/cart/getcountitems.php";
//Coupon
  static const String checkcoupon = "$serverStore/coupon/checkcoupon.php";
//ADDress
  static const String addressView = "$serverStore/address/view.php";
  static const String addressAdd = "$serverStore/address/add.php";
  static const String addressEdit = "$serverStore/address/edit.php";
  static const String addressDelete = "$serverStore/address/delete.php";

  static const String checkout = "$serverStore/orders/checkout.php";
  ////////////////////////////////////////////employment//////////////////
    static const String employment = "$serverStore/employment.php";
    //////////////////selling///////////////
    static const String onehalfwater = "$serverStore/selling/SellingWatersmallonehalf.php";
    static const String smallwater = "$serverStore/selling/SellingWatersmall.php";
    static const String midwater = "$serverStore/selling/SellingWateronelitre.php";
    static const String sellwaterhuge = "$serverStore/selling/SellingWaterhuge.php";
    static const String sellorganic = "$serverStore/selling/sellorganicfruits.php";
    static const String sellorganicveg = "$serverStore/selling/sellorganicveg.php";
        static const String sellvase = "$serverStore/selling/sellvase.php";
    static const String sellplate = "$serverStore/selling/sellplate.php";
    static const String selltajin = "$serverStore/selling/selltajin.php";

///////////////////////////////////////qrprize//////////////////////////
    static const String fiftydiscountprize = "$serverStore/Qrprize/fiftydis.php";
    static const String tendiscountprize = "$serverStore/Qrprize/tendis.php";
    static const String twentydiscountprize = "$serverStore/Qrprize/twentydiscount.php";
    static const String seventydiscountprize = "$serverStore/Qrprize/seventydis.php";
   // static const String fiftydiscountprize = "$serverStore/Qrprize/fiftydis.php";

/////////////////////////////favorite///////////////////////
  // static const String favoriteAdd = "$serverStore/favorite/add.php";
  // static const String favoriteRemove = "$serverStore/favorite/remove.php";
  // static const String favoriteView = "$serverStore/favorite/view.php";
  // static const String deletefromfavroite =
  //     "$serverStore/favorite/delete.php";

}
//192.168.226.69