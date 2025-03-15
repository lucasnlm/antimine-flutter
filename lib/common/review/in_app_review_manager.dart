import 'package:in_app_review/in_app_review.dart';

class InAppReviewManager {
  InAppReviewManager({
    InAppReview? inAppReview,
  }) : _inAppReview = inAppReview ?? InAppReview.instance;

  bool _alreadyRequested = false;
  final InAppReview _inAppReview;

  final InAppReview inAppReview = InAppReview.instance;

  void tryRequestReview() async {
    if (_alreadyRequested) {
      return;
    }
    _alreadyRequested = true;

    final isAvailable = await _inAppReview.isAvailable();
    if (isAvailable) {
      await inAppReview.requestReview();
    }
  }
}
