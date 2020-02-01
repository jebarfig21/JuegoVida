public class Celula{
private int x;
private int y;
private int estado;

public Celula(int x, int y){
  this.x=x;
  this.y=y;
  this.estado=0;
}

public Celula(int x, int y,int estado){
  this.x=x;
  this.y=y;
  this.estado=estado;
}

public int getX(){
return this.x;
}
public int getY(){
return this.y;
}


public void setX(int x){
this.x=x;
}
public void setY(int y){
this.y=y;
}


public void getEstado(int estado){
  this.estado = estado;
}

public void setEstado(int estado){
  this.estado = estado;
}

}
