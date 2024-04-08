import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:micro_projeto_mobile/components/auth_button.dart';
import 'package:micro_projeto_mobile/components/auth_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Icon(Icons.lock, size: 90),
              const SizedBox(height: 10),
              Text(
                'Bem-vindo de volta, sentimos sua falta!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              const Form(
                child: Column(
                  children: [
                    AuthTextField(label: 'E-mail'),
                    SizedBox(height: 10),
                    AuthTextField(label: 'Password'),
                    SizedBox(height: 30),
                    AuthButton(buttonText: 'Entrar'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Não possuí conta?',
                    ),
                    TextSpan(
                      text: ' Cadastrar',
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () => {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
