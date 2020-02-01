//Empezaremos con el punto pegado a la izquierda y lo moveremos a la derecha
//Así que creamos una variable x con valor 0 y luego iremos aumentando su valor
Tablero leonardo = new Tablero(40); 

//Establezcamos los valores iniciales
void setup(){
  //tamaño de la ventana
  size(401,601);
  //color del fondo
  background(#000000);
  //color de la línea
  leonardo.dibujaCuadricula(width,height,1,255);
  leonardo.dibujaCelula(4*leonardo.getAnchoCuadro()+1,3*leonardo.getAnchoCuadro()+1);
}
 
//Animemos la cosa
void draw(){
  
}
