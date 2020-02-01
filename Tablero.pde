public class Tablero{
  private int anchoCuadro;
  
  public Tablero(int anchoCuadro){
  this.anchoCuadro = anchoCuadro;
  }
  
  public int getAnchoCuadro(){
        return anchoCuadro;
  }
  public void dibujaCuadricula(int ancho, int alto, int anchoLinea, int colorLinea){
    stroke(colorLinea);
    strokeWeight(anchoLinea);

    for(int i=0; i <= alto/anchoCuadro ; i++)
    line(0, i*anchoCuadro, ancho, i*anchoCuadro);
    
    for(int i=0; i <= ancho/anchoCuadro ; i++)
    line(i*anchoCuadro, 0, i*anchoCuadro, alto);
  }
  
  public void dibujaCelula(int x, int y){
    strokeWeight(0);
    fill(0,255,0);
    rect(x, y, anchoCuadro-1, anchoCuadro-1);
  }
}
