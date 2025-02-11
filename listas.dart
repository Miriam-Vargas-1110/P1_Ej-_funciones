void main (){
   //Miriam Vargas Carrillo:22308051281110

   print('Miriam Vargas Carrillo:22308051281110');
    List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
    print(numeros);
    print(numeros[0]);
    // listar los elementos de la lista con un ciclo for
    for (int i = 0; i < numeros.length; i++){
      print(numeros[i]);
    }
    // lista tipo double con 5 elementos de estaturas
    List<double> estaturas = [1.60,1.70,1.88,1.60,1.95];
    //lista de 5 nombres de amigos
    List<String> amigos = ['Johana','alejandra','Lee know','Alondra','Felix'];
    //imprimir lista de estaturas y nombres de amigos
    for (int i = 0; i < estaturas.length; i++){
      print('Nombre: ${amigos[i]} Estatura: ${estaturas[i]}');
    }
}