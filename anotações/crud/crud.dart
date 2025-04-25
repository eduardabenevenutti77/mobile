import 'package:flutter/material.dart';
 
// Definindo o modelo de usuário
class Usuario {
  String nome;
  String email;
 
  Usuario({required this.nome, required this.email});
}
 
void main() {
  runApp(MyApp());
}

// myapp é filha do statelesswidget [parte da biblioteca material]
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
 
 // sobrescreve o método build da classe statelesswidget
  @override
  // widget é tipo uma caixa [similar ao container]
  Widget build(BuildContext context) {
    // MaterialApp é filho de widget
    return MaterialApp(
      // atributos do materialapp
      title: 'CRUD de Usuários',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomeScreen(),
    );
  }
}

// homescren é filha do statefulwidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  // Lista para armazenar os usuários
  List<Usuario> usuarios = [];
 
  // Controladores para os campos de texto
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
 
  // Função para adicionar ou atualizar o usuário na lista
  void _adicionarOuAtualizarUsuario() {
    if (_nomeController.text.isEmpty || _emailController.text.isEmpty) {
      return;
    }
 
    setState(() {
      // Se o usuário já existir, atualiza. Caso contrário, adiciona um novo usuário.
      final usuarioExistente = usuarios.firstWhere(
        (usuario) => usuario.email == _emailController.text,
        orElse: () => Usuario(nome: '', email: ''),
      );
 
      if (usuarioExistente.email == '') {
        usuarios.add(Usuario(
          nome: _nomeController.text,
          email: _emailController.text,
        ));
      } else {
        usuarioExistente.nome = _nomeController.text;
      }
 
      // Limpa os campos de texto
      _nomeController.clear();
      _emailController.clear();
    });
  }
 
  // Função para excluir um usuário da lista
  void _excluirUsuario(int index) {
    setState(() {
      usuarios.removeAt(index);
    });
  }
 
  // Função para editar um usuário (preenche os campos de texto com os dados do usuário)
  void _editarUsuario(int index) {
    _nomeController.text = usuarios[index].nome;
    _emailController.text = usuarios[index].email;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD de Usuários'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _adicionarOuAtualizarUsuario,
              child: Text('Adicionar/Atualizar Usuário'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(usuarios[index].nome),
                      subtitle: Text(usuarios[index].email),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => _editarUsuario(index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _excluirUsuario(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}