.class public Cilindro
.super Circulo
.implements Conicas
; NOTA hereda el radio: .field protected radio F 
.field protected altura F

.method public <init>(FF)V
.limit stack 3
.limit locals 3
   aload_0
   fload_1
   invokespecial Circulo/<init>(F)V
   
   aload_0
   fload_2
   putfield Cilindro/altura F 
   
   return
   
.end method

.method public volumen()F 
.limit stack 3
.limit locals 2
    aload_0
	invokespecial Circulo/area()F 
	aload_0
	getfield Cilindro/altura F
    fmul
    freturn 	
.end method

.method public area()F
.limit stack 3
.limit locals 3
	aload_0
	invokespecial Circulo/area()F 
	ldc 2.0
	fmul		; ya tenemos el area de las 2 "tapas"
	aload_0
	invokespecial Circulo/perimetro()F 
	aload_0
	getfield Cilindro/altura F
    fmul      ; Ya tenemos el area lateral
	fadd		; Sumamos el area lateral mas las 2 tapas
	freturn		; devuelde el resultado a quien lo llamó
.end method



