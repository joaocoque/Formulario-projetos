import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controladorCodigo = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();
  final TextEditingController _controladorGerente = TextEditingController();
  final TextEditingController _controladorData1 = TextEditingController();
  final TextEditingController _controladorData2 = TextEditingController();
  final TextEditingController _controladorDatain = TextEditingController();
  final TextEditingController _controladorDatafim = TextEditingController();
  final TextEditingController _controladorDatareview = TextEditingController();
  final TextEditingController _controladorDataretrospectiva = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando de Projeto'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorCodigo,
                decoration: InputDecoration(labelText: 'código'),
              ),
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                controller: _controladorDescricao,
                decoration: InputDecoration(labelText: 'Descrição'),
              ),
              TextField(
                controller: _controladorGerente,
                decoration: InputDecoration(labelText: 'Gerente de Projetos'),
              ),
              TextField(
                controller: _controladorData1,
                decoration: InputDecoration(labelText: 'Data SP1'),
              ),
              TextField(
                controller: _controladorData2,
                decoration: InputDecoration(labelText: 'Data SP2'),
              ),
              TextField(
                controller: _controladorDatain,
                decoration: InputDecoration(labelText: 'Data Inicial'),
              ),
              TextField(
                controller: _controladorDatafim,
                decoration: InputDecoration(labelText: 'Data Final'),
              ),
              TextField(
                controller: _controladorDatareview,
                decoration: InputDecoration(labelText: 'Data Review'),
              ),
              TextField(
                controller: _controladorDataretrospectiva,
                decoration: InputDecoration(labelText: 'Data Retrospectiva'),
              ),

             
             //Padding(
             //  padding: const EdgeInsets.only(top: 16.0),
             //  child: TextField(
             //    controller: _controladorQuantidade,
             //   decoration: InputDecoration(labelText: 'Quantidade'),
             //    keyboardType: TextInputType.number,
             //   ),
             //  ),
             // Padding(
             //   padding: const EdgeInsets.only(top: 16.0),
             //   child: TextField(
             //    controller: _controladorValor,
             //    decoration: InputDecoration(labelText: 'Valor'),
             //    keyboardType: TextInputType.number,
             //    ),
             //   ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String codigo = _controladorCodigo.text;
                    final String nome = _controladorNome.text;
                    final String descricao = _controladorDescricao.text;
                    final String gerente = _controladorGerente.text;
                    final String data1 = _controladorData1.text;
                    final String data2 = _controladorData2.text;
                    final String datain = _controladorDatain.text;
                    final String datafim = _controladorDatafim.text;
                    final String datareview = _controladorDatareview.text;
                    final String dataretrospectiva = _controladorDataretrospectiva.text;
                    
                    //final int quantidade =
                        //int.tryParse(_controladorQuantidade.text);
                    //final double valor =
                       // double.tryParse(_controladorValor.text);

                    final Projeto projetoNovo =
                        Projeto( codigo, nome, descricao, gerente, data1, data2, datain, datafim, datareview, dataretrospectiva); 
                    print(projetoNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Projeto {
  final String codigo;
  final String nome;
  final String descricao;
  final String gerente;
  final String data1;
  final String data2;
  final String datain;
  final String datafim;
  final String datareview;
  final String dataretrospectiva;

 // final int quantidade;
 // final double valor;

  Projeto(
    this.codigo,
    this.nome,
    this.descricao,
    this.gerente,
    this.data1,
    this.data2,
    this.datain,
    this.datafim,
    this.datareview,
    this.dataretrospectiva

   // this.quantidade,
    //this.valor,
  );

  @override
  String toString() {
    return 'Projeto{codigo: $codigo, nome: $nome, descricao: $descricao, gerente: $gerente, data1: $data1, data2: $data2, datain: $datain, datafim: $datafim, datareview: $datareview, dataretrospectiva: $dataretrospectiva }';   //quantidade: $quantidade, valor: $valor}';
  }
}
