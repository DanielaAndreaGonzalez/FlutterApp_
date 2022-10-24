class triangulo{

  late int ladoA;
  late int ladoB;
  late int ladoC;
  late String tipo;
  late String img;

  triangulo(this.ladoA, this.ladoB, this.ladoC);


  //triangulo: todos los lados >0
  //Equilatero: todoloas los lados iguales
  //Isoceles: dos lados son iguales
  //Escaleno: todos los lados son diferentes

  void tipoTriangulo()
  {
    if(ladoA >0 && ladoB >0 && ladoC >0){
      if(ladoA == ladoB && ladoB == ladoC)
        {
          tipo = "Equilatero";
          img="assets/images/equilatero.jpg";
        }
      else if(ladoA == ladoB || ladoA == ladoC || ladoB == ladoC)
        {
          tipo = "Isoceles";
          img = "assets/images/isoceles.jpg";
        }
      else{
        tipo = "Escaleno";
        img = "assets/images/escaleno.jpg";
      }
    }
    else{
      tipo="No es triangulo";
      img = "assets/images/error.jpg";
    }


  }


}
