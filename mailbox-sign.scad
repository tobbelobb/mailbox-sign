lh=29;
T = 11.83;
o = 13.77;
r = 11.73;
b = 10.09;
j =  6.73;
oe= 14.94;
n = 14.29;
L=11.09;
u=14.45;
d=10.76;
v=11.15;
i= 8.31;
g=11.77;
s=10.0-0.5;
e=11.72;
n=14.29;
M=23.73;
a=13.83;
G=17.36;
f= 6.88;
t=10.50;
oes=13.77;
m=20.54;
I=9.33;
k=9.11;
l=5.58;
c=12.40;

module letter(string, trx=0, height = 3){
  translate([trx,0,0]) 
    linear_extrude(height=height, convexity=10, slices=2) import(string);
}

module tbear(){
  letter("font/T.dxf",0);
  letter("font/o.dxf",T);
  letter("font/r.dxf",T+o);
  letter("font/b.dxf",T+o+r);
  letter("font/j.dxf",T+o+r+b);
  letter("font/oslash.dxf",T+o+r+b+j);
  letter("font/r.dxf",T+o+r+b+j+oe);
  letter("font/n.dxf",T+o+r+b+j+oe+r);
}

module Ludvigsen(){
  letter("font/L.dxf",0);
  letter("font/u.dxf",L);
  letter("font/d.dxf",L+u);
  letter("font/v.dxf",L+u+d);
  letter("font/i.dxf",L+u+d+v);
  letter("font/g.dxf",L+u+d+v+i);
  letter("font/s.dxf",L+u+d+v+i+g);
  letter("font/e.dxf",L+u+d+v+i+g+s+0.5);
  letter("font/n.dxf",L+u+d+v+i+g+s+e+0.5);
}

module Maja(){
  letter("font/M.dxf",0);
  letter("font/a.dxf",M);
  letter("font/j.dxf",M+a);
  letter("font/a.dxf",M+a+j);
}

module Grafstr(){
  letter("font/G.dxf",0);
  letter("font/r.dxf",G);
  letter("font/a.dxf",G+r);
  letter("font/f.dxf",G+r+a);
  letter("font/s.dxf",G+r+a+f);
  letter("font/t.dxf",G+r+a+f+s);
  letter("font/r.dxf",G+r+a+f+s+t);
  letter("font/odieresis.dxf",G+r+a+f+s+t+r);
  letter("font/m.dxf",G+r+a+f+s+t+r+oes);
}

module Ingen(){
  letter("font/I.dxf",0);
  letter("font/n.dxf",I);
  letter("font/g.dxf",I+n);
  letter("font/e.dxf",I+n+g);
  letter("font/n.dxf",I+n+g+e);
}

module reklam(){
  letter("font/r.dxf",0);
  letter("font/e.dxf",r);
  letter("font/k.dxf",r+e);
  letter("font/l.dxf",r+e+k);
  letter("font/a.dxf",r+e+k+l);
  letter("font/m.dxf",r+e+k+l+a);
}

module Inga(){
  letter("font/I.dxf",0);
  letter("font/n.dxf",I);
  letter("font/g.dxf",I+n);
  letter("font/a.dxf",I+n+g);
}

module gratistidningar(){
  letter("font/g.dxf",0);
  letter("font/r.dxf",g);
  letter("font/a.dxf",g+r);
  letter("font/t.dxf",g+r+a);
  letter("font/i.dxf",g+r+a+t);
  letter("font/s.dxf",g+r+a+t+i);
  letter("font/t.dxf",g+r+a+t+i+s);
  letter("font/i.dxf",g+r+a+t+i+s+t);
  letter("font/d.dxf",g+r+a+t+i+s+t+i);
  letter("font/n.dxf",g+r+a+t+i+s+t+i+d);
  letter("font/i.dxf",g+r+a+t+i+s+t+i+d+n);
  letter("font/n.dxf",g+r+a+t+i+s+t+i+d+n+i);
  letter("font/g.dxf",g+r+a+t+i+s+t+i+d+n+i+n);
  letter("font/a.dxf",g+r+a+t+i+s+t+i+d+n+i+n+g);
  letter("font/r.dxf",g+r+a+t+i+s+t+i+d+n+i+n+g+a);
}

module Tack(){
  letter("font/T.dxf",0);
  letter("font/a.dxf",T);
  letter("font/c.dxf",T+a);
  letter("font/k.dxf",T+a+c);
  letter("font/exclam.dxf",T+a+c+k);
}

union(){
  color("black") cube([140,80,1.5]);
  translate([7,60,1]) scale(0.6)
  union(){
    Maja();
    //translate([64,0,0]) Grafstr();
    letter("font/G.dxf",70);
    translate([102,0,0]) Ludvigsen();
    translate([0,-lh,0]) tbear();
    translate([102,-lh,0]) Ludvigsen();
    translate([0,-2*lh,0]) Ingen();
    translate([70,-2*lh,0]) reklam();
    translate([0,-3*lh,0]) Inga();
    translate([57,-3*lh,0]) scale(0.9) gratistidningar();
    //translate([0,-4*lh,0]) Tack();
  }
}
