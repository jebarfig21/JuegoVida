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
  
  //Regresa matriz bidimensional de celdas(tablero de celdad)
  public Celula[][] getCelulas(){
   return this.celulas;
  }
  
  
  
  //Dibuja la cuadirucla con las lineas en el color pasado por parametro
  
  public void dibujaCuadricula(int colorLinea){
    stroke(colorLinea);
    strokeWeight(1);

    for(int i=0; i <= alto ; i++)//lineas horizontales
    line(0, i*anchoCelula, ancho*anchoCelula, i*anchoCelula);
    
    for(int i=0; i <= ancho ; i++)//lineas verticales
    line(i*anchoCelula, 0, i*anchoCelula, alto*anchoCelula);
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
      
private void decision(int vecinos, Celula celula){
  
 if (celula.estado){
   if (vecinos > 3) celula.estado=false;//muerte por sobrepoblacion
   //if (vecinos == 3 || vecinos == 2) celula.estado=true;//Se mantiene viva
   if (vecinos < 2) celula.estado=false;//muerte por soledad
 }
 
 else if (!celula.estado && vecinos != 3 ){
   celula.estado=false;//con exactamente tres la celula se vuelve true(se activa)
 
}
else{celula.estado=true;}
}

private int mod(int a, int b){//a%b Altero la operacion de modulo para este problema
  a=a%b;
  if(a<0)a+=b;
  return a;
}
      
public void estadoSiguiente(Celula c_aux){
  
  int x = c_aux.getX();
  int y = c_aux.getY();
  int suma = 0;
  
  System.out.println("Original"+getCelula(x,y));
     
    System.out.println("Caso 0 "+getCelula(mod((x-1),ancho),mod((y-1),alto)));
    if(getCelula(mod((x-1),ancho),mod((y-1),alto)).estado) suma++;//0
                   
    System.out.println("Caso 1 "+getCelula(x,mod((y-1),alto)));
    if(getCelula(x,mod((y-1),alto)).estado) suma++;//1
                 
    System.out.println("Caso 2 "+getCelula(mod((x+1),ancho),mod((y-1),alto)));
    if(getCelula(mod((x+1),ancho),mod((y-1),alto)).estado) suma++;//2
                 
    System.out.println("Caso 3 "+getCelula(mod((x+1),ancho),y));
    if(getCelula(mod((x+1),ancho),y).estado) suma++;//3
                   
    System.out.println("Caso 4 "+getCelula((x+1)%ancho,(y+1)%alto));
    if(getCelula(mod((x+1),ancho),mod((y+1),alto)).estado) suma++;//4
                   
    System.out.println("Caso 5 "+getCelula(x,mod((y+1),alto)));
    if(getCelula(x,mod((y+1),alto)).estado) suma++;//5
                   
    System.out.println("Caso 6 "+getCelula(mod((x-1),ancho),mod((y+1),alto)));
    if(getCelula(mod((x-1),ancho),mod((y+1),alto)).estado) suma++;//6
                   
                  
    System.out.println("Caso 7 "+getCelula(mod((x-1),ancho),y));
    if(getCelula(mod((x-1),ancho),y).estado) suma++;//7
          
    decision(suma, c_aux);
  }
  
 public void generaLinena(int x, int y){
   Celula celula = getCelula(x,y);
}
  
}
