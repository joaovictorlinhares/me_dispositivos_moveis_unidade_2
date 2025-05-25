class Professor {
  String codigo;
  String nome;
  String sexo;
  int horasAula;
  double salarioBruto;
  double salarioLiquido;

  Professor(this.codigo, this.nome, this.sexo, this.horasAula)
    : salarioBruto = horasAula * 12.30,
      salarioLiquido = calcularLiquido(horasAula * 12.30, sexo);

  static double calcularLiquido(double bruto, String sexo) {
    double desconto = sexo == 'M' ? 0.10 : 0.05;
    return bruto * (1 - desconto);
  }

  @override
  String toString() {
    return "- Código: $codigo, Nome: $nome, Salário Bruto: R\$ ${salarioBruto.toStringAsFixed(2)}, "
        "Salário Líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}";
  }
}
