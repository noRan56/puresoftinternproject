import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/feature/data_layer/model/on_boarding_model.dart';

class OnboardingViewModel {
  List<OnboardingModel> items = [
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: TitlesSubtitle.onBoardingSubTitle1,
      descriptions: TitlesSubtitle.onBoardingSubTitle1,
    ),
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: TitlesSubtitle.onBoardingTitle2,
      descriptions: TitlesSubtitle.onBoardingSubTitle2,
    ),
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: TitlesSubtitle.onBoardingTitle2,
      descriptions: TitlesSubtitle.onBoardingSubTitle2,
    ),
  ];
}
