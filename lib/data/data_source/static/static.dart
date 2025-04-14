import 'package:trendy_shop/core/constants/image_assets.dart';
import 'package:trendy_shop/data/models/on_boarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Choose Product',
    body:
        'We have a 10K product, choose\n your product from trendy shop store.',
    imgUrl: ImageAssets.chooseProductImg,
  ),
  OnBoardingModel(
    title: 'Easy & Safe Payment',
    body:
        'Easy checkout & safe payment method.\n trusted by our customers from all over the world.',
    imgUrl: ImageAssets.easyPaymentImg,
  ),
  OnBoardingModel(
    title: 'Track Your Order',
    body:
        'Best tracker has been hand for\n track your order. You will know were your product the moment.',
    imgUrl: ImageAssets.trackOrderImg,
  ),
  OnBoardingModel(
    title: 'Fast Delivery',
    body:
        'Reliable and fast delivery. we\n deliver your product the fustast way possite',
    imgUrl: ImageAssets.recieveOrederImg,
  ),
];
