.class public Circulo
.super java/lang/Object
.implements Conicas
.field protected radio F



.method public <init>(F)V
.limit stack 3
.limit locals 3
   aload_0
   invokespecial java/lang/Object/<init>()V
   
   aload_0
   fload_1
   putfield Circulo/radio F
   return
   
.end method

.method public area()F
.limit stack 3
.limit locals 2

   aload_0
   getfield Circulo/radio F 
   dup
   fmul
   ldc 3.1416
   fmul
   freturn
.end method

 .method public perimetro()F 
 .limit stack 3
 .limit locals 2

   aload_0
   getfield Circulo/radio F 
   ldc 2.0
   fmul
   ldc 3.1416
   fmul
   freturn
 .end method
 
 .method public volumen()F 
 .limit stack 2
 
   aload_0
   ldc 0.0
   freturn
 .end method
 






   
   
   
 


