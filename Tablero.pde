import java.lang.Math; 
public class Tablero{
  
  private Celula[][] celulas;
  private int ancho;
  private int alto;
  private int anchoCelula;
  
  public Tablero(int ancho, int alto, int anchoCelula){
    this.anchoCelula = anchoCelula;
    this.ancho = ancho;
    this.alto=alto;
    this.celulas = new Celula[ancho][alto];//(x,y)
    for(int j = 0; j < alto; j++)
      for(int i = 0; i < ancho; i++)
         celulas[i][j] = new Celula(i,j);
        
  }
  
  public int getAnchoCuadro(){
        return anchoCelula;
  }
  
  //Regresa una celda en especifico
  public Celula getCelula(int x, int y){
    return celulas[x][y];//ancho,alto
  }
  
  
  
  //Dibuja la cuadirucla con las lineas en el color pasado por parametro
  
  public void dibujaCuadricula(int colorLinea){
    stroke(colorLinea);
    strokeWeight(1);
    for(int i=0; i <= alto ; i++){
    line(0, i*anchoCelula, ancho*anchoCelula, i*anchoCelula);
    line(i*anchoCelula, 0, i*anchoCelula, alto*anchoCelula);
    }
  }
  
  public void dibujaCelula(int colorCelula, Celula celula){
    fill(colorCelula);
    strokeWeight(0);
    rect(celula.getX()*anchoCelula+1, celula.getY()*anchoCelula+1, anchoCelula-1, anchoCelula-1);     
   }
  
  
  
  public int  getAncho(){
    return this.ancho;
  }
  
  public int getAlto(){
    return this.alto;
  }
   /** 
            -----------
           | 0 | 1 | 2 |
           |-----------|
           | 7 |   | 3 |
           |-----------|
           | 6 | 5 | 4 |
            -----------
      */

private void decision(Celula celula){
  
 if (celula.estado){
   if (celula.vecinos > 3) celula.estado=false;//muerte por sobrepoblacion
   //if (vecinos == 3 || vecinos == 2) celula.estado=true;//Se mantiene viva
   if (celula.vecinos < 2) celula.estado=false;//muerte por soledad
 }
 
 else if (!celula.estado && celula.vecinos == 3 ){
   celula.estado=true;//con exactamente tres la celula se vuelve true(se activa)
 
}

}
private int mod(int a, int b){//a%b Altero la operacion de modulo para este problema
  a=a%b;
  if(a<0)a+=b;
  return a;
}
      
public void calculaVecinos(Celula c_aux){
  
  int x = c_aux.getX();
  int y = c_aux.getY();
  int suma = 0;
     
    if(getCelula(mod((x-1),ancho),mod((y-1),alto)).estado) suma++;//0
                   
    if(getCelula(x,mod((y-1),alto)).estado) suma++;//1
                 
    if(getCelula(mod((x+1),ancho),mod((y-1),alto)).estado) suma++;//2
                 
    if(getCelula(mod((x+1),ancho),y).estado) suma++;//3
                   
    if(getCelula(mod((x+1),ancho),mod((y+1),alto)).estado) suma++;//4
                   
    if(getCelula(x,mod((y+1),alto)).estado) suma++;//5
                   
    if(getCelula(mod((x-1),ancho),mod((y+1),alto)).estado) suma++;//6
    
    if(getCelula(mod((x-1),ancho),y).estado) suma++;//7
    
    c_aux.vecinos = suma;
  }
  
 public void generaLinea(int x, int y){
   getCelula(x,y).setEstado(true);
   getCelula(x+1,y).setEstado(true);
   getCelula(x-1,y).setEstado(true);
   
}

public void generaAleatorios(int n){
  int x ;
  int y ;
  if (n>=ancho*alto) n = ancho*alto/2;
    for(int i = 0; i < n;i++){
      do{ 
      x = (int)random(0,ancho-1);
      y = (int)random(0,alto-1);}
      while(this.getCelula(x,y).estado);
      this.getCelula(x,y).setEstado(true);
    }
    
}
  
}
