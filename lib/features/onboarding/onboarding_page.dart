import 'package:despesas_pessoais/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cor_tres,
      body: Column(
        children: [
          const SizedBox(height: 48.0),
          Expanded(
            child: Image.asset(
                'assets/images/man.png'),
          ),
          const Text('Gaste de Forma ',
              textAlign: TextAlign.center,
              style:  TextStyle(
              fontFamily: 'Inter',
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: AppColors.cor_dois
            ,)
            ,),

          const Text('Mais Inteligente',
              textAlign: TextAlign.center,
              style:  TextStyle(
              fontFamily: 'Inter',
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: AppColors.cor_dois
              ,)
            ,),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.center,
                height: 64.0,
                width: 300.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: AppColors.greenGradient
                ),
              ),
                child: const Text(
                  'Começar!',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                ),
              ),
            ),


            const Text('Já possui conta? Cadastre!',
              textAlign: TextAlign.center,
              style:  TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey
              ),
            ),
          const SizedBox(height:40.0)
      ],
      ),
    );
  }
}