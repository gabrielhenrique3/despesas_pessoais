import 'package:despesas_pessoais/common/constants/app_text_styles.dart';
import 'package:despesas_pessoais/common/widgets/password_form_field.dart';
import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          const Text('Economize ',
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontFamily: 'Inter',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: AppColors.cor_dois
            ),
          ),

           const Text('Seu dinheiro!',
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontFamily: 'Inter',
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: AppColors.cor_dois
              ),
            ),

            Expanded(
                child: Image.asset(
                    'assets/images/sing_up_image.png',
                ),
            ),

            const Form(
              child: Column(
                children: [
                  CustomTextFormFileld(
                    labelText: "seu nome",
                    hintText: "Escreva Seu Nome",
                  ),
                  PasswordFormField(
                    labelText: "escreva sua senha",
                    hintText: "*********", controller: null,
                  ),PasswordFormField(
                    labelText: "confirmar senha",
                    hintText: "*********", controller: null,
                  ),
                ],
              ),
            ),

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
                'Cadastrar!',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
              ),
            ),
          ),


          const Text('Já possuo uma conta',
            textAlign: TextAlign.center,
            style:  TextStyle(
                fontFamily: 'Inter',
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey
            ),
          ),
          ],
      ),
    );
  }
}

class CustomTextFormFileld extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const CustomTextFormFileld({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.keyboardType,
  });

  @override
  State<CustomTextFormFileld> createState() => _CustomTextFormFileldState();
}

class _CustomTextFormFileldState extends State<CustomTextFormFileld> {
  final defaltBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.cor_dois,),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle:AppTextStyles.inputHintText.copyWith(color: Colors.grey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText?.toUpperCase(),
          labelStyle: AppTextStyles.inputLabelText.copyWith(color: Colors.grey),
          focusedBorder: defaltBorder,
          errorBorder: defaltBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: defaltBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: defaltBorder,
          disabledBorder: defaltBorder,
        ),
      ),
    );
  }
}
