public class Celula{
private int x;
private int y;
private boolean estado;

public Celula(int x, int y){
  this.x=x;
  this.y=y;
  this.estado=false;
}

public int getX(){
  return this.x;
}

public int getY(){
  return this.y;
}

public boolean getEstado(){
  return estado;
}

public void setEstado(boolean estado){
  this.estado = estado;
}

public void swapEstado(){
  this.estado= !this.estado;
}

public String toString(){
  return "("+getX()+","+ getY()+ ")"+ " Estado ="+getEstado();
}

}
