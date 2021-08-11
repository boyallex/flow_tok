import 'package:flow_tok/widgets/Profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../FTButton.dart';
import '../FTContainer.dart';
import '../Texts.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                FTText.casual("Кошелек"),
                Image(
                  image: AssetImage("assets/img/clock.png"),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FTText.grey("Ваш баланс"),
          ),
          WalletBalace(),
          FTButton.violet(
            "Выплатить",
            () {},
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class WalletBalace extends StatelessWidget {
  const WalletBalace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileInProgress) {
          return CircularProgressIndicator.adaptive();
        } else if (state is ProfileDownloadedSuccess) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FTText.largeNumbers('${state.data.walletBalance} ₽'),
          );
        } else if (state is ProfileFailed) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FTText.largeNumbers('Failed'),
          );
        }
        return Container();
      },
    );
  }
}

