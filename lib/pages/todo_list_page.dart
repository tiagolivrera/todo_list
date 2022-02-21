import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  void login() {
    String text = emailController.text;
    print(text);
  }

  void onChanged(String text) { //imprime todas as alterações no campo
    //print(text);
  }

  void onSubmitted(String text) { //imprime o que estiver no campo assim que aperta o botao
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min, // ocupa apenas a altura necessária, centralizando o TextField na tela
            children: [
              TextField(
                controller:
                    emailController, // recuperar o texto digitado nesse campo
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(onPressed: login, child: Text('Entrar')),
            ],
          ),
        ),
      ),
    );
  }
}
