.class public Esfera
.super Circulo
.implements Conicas
; No es necesario ponerle radio porque lo hereda de Circulo
; .field protected radio F (Heredado de Circulo)

.method public <init>(F)V
.limit stack 3
.limit locals 3
   aload_0
   fload_1
   invokespecial Circulo/<init>(F)V
   return
   
.end method

.method public area()F 
.limit stack 3
.limit locals 1
    aload_0
	invokespecial Circulo/area()F 
	ldc 4.0
	fmul
	freturn
.end method

.method public volumen()F 
.limit stack 3
.limit locals 1
   aload_0
   invokevirtual Esfera/area()F 
   aload_0
   getfield Esfera/radio F
   fmul
   ldc 3.0
   fdiv
   freturn
.end method






