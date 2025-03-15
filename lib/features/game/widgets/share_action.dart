import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../bloc/game_bloc.dart';

class ShareAction extends StatelessWidget {
  const ShareAction({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.share),
      tooltip: t.share,
      onPressed: () => context.read<GameBloc>().shareGameImage(),
    );
  }
}
