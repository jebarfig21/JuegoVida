//Empezaremos con el punto pegado a la izquierda y lo moveremos a la derecha
//Así que creamos una variable x con valor 0 y luego iremos aumentando su valor
int alto = 100;         // Altura (en celdas) de la cuadricula.
int ancho = 200;        // Anchura (en celdas) de la cuadricula.
int celda = 5;          // Tamanio de cada celda cuadrada (en pixeles).
int prendidas = 140;      // Cantidad de celdas con estado 1.
int colorTrue = #00ff00;
int colorFalse = #0000ff;
int colorBackground = #000000;
Tablero tablero = new Tablero(ancho,alto,celda);
  
public void settings() {
  size( ancho*celda+1, (alto*celda)+62); //tamaño de la ventana
  }

//Establezcamos los valores iniciales
void setup(){
  
  background(colorBackground);//Fondo
  tablero.dibujaCuadricula(255);
  tablero.generaAleatorios(6000);

for(int j = 0; j < alto; j++)
          for(int i = 0; i < ancho; i++){
            
            if(tablero.getCelula(i,j).estado){
              tablero.dibujaCelula(colorTrue,tablero.getCelula(i,j));
            }
            else{
              tablero.dibujaCelula(#0000ff,tablero.getCelula(i,j));
          }
          
          tablero.calculaVecinos(tablero.getCelula(i,j));   
        }
 

}
 
//Animemos la cosa
void draw(){
 
 delay(10);
 for(int j = 0; j < alto; j++)
          for(int i = 0; i < ancho; i++){
            
            if(tablero.getCelula(i,j).estado){
              tablero.dibujaCelula(colorTrue,tablero.getCelula(i,j));
            }
            
            else{
              tablero.dibujaCelula(#0000ff,tablero.getCelula(i,j));
          }
          
          tablero.calculaVecinos(tablero.getCelula(i,j));
          
        }
          
   for(int j = 0; j < alto; j++)
          for(int i = 0; i < ancho; i++){
            tablero.decision(tablero.getCelula(i,j));
            
          }
        
 }
