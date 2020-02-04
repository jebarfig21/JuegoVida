public class Celula{
private int x;
private int y;
private boolean estado;
private int vecinos;

public Celula(int x, int y){
  this.x=x;
  this.y=y;
  this.estado=false;
  this.vecinos=0;
}

public int getX(){
  return this.x;
}

public int getY(){
  return this.y;
}

public int getVecinos(){
  return this.vecinos;
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
