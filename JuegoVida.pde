//Empezaremos con el punto pegado a la izquierda y lo moveremos a la derecha
//Así que creamos una variable x con valor 0 y luego iremos aumentando su valor
int alto = 30;         // Altura (en celdas) de la cuadricula.
int ancho = 40;        // Anchura (en celdas) de la cuadricula.
int celda = 10;          // Tamanio de cada celda cuadrada (en pixeles).
int prendidas = 140;      // Cantidad de celdas con estado 1.
int colorTrue = #ff00ff; 
Tablero tablero = new Tablero(ancho,alto,celda);
  

public void settings() {
  size( ancho*celda+1, (alto*celda)+62); //tamaño de la ventana
  }

//Establezcamos los valores iniciales
void setup(){
  
  background(#ffaa33);//Fondo
  tablero.dibujaCuadricula(255);

  Celula celula2 = tablero.getCelula(1,1);
  celula2.setEstado(true);
  
  Celula celula3 = tablero.getCelula(0,1);
  celula3.setEstado(true);
  
  
  Celula celula = tablero.getCelula(2,1);
  celula.setEstado(true);
  
    Celula celula4 = tablero.getCelula(5,7);
  celula4.setEstado(true);
  
    Celula celula5 = tablero.getCelula(4,1);
  celula5.setEstado(true);


}
 
//Animemos la cosa
void draw(){
  //delay(2000);
   
 for(int j = 0; j < alto; j++)
          for(int i = 0; i < ancho; i++){
            
            if(tablero.getCelula(i,j).estado){
              tablero.dibujaCelula(colorTrue,tablero.getCelula(i,j));
            }
            
            else{
              tablero.dibujaCelula(0,tablero.getCelula(i,j));
          }
          //tablero.estadoSiguiente(tablero.getCelula(i,j));
          }
          
   for(int j = 0; j < alto; j++)
          for(int i = 0; i < ancho; i++){
            System.out.println(i+" , "+j);
            tablero.estadoSig uiente(tablero.getCelula(i,j));
          }
         
        
 }
