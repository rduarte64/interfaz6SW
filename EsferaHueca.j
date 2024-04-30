.class public EsferaHueca
.super Esfera
; .field protected radio F (lo Hereda de Esfera)
.field protected radioInt F

.method public <init>(FF)V
.limit stack 3
.limit locals 3
   aload_0
   fload_1
   invokespecial Esfera/<init>(F)V
   aload_0
   fload_2
   putfield EsferaHueca/radioInt F 
   return
   
.end method 

.method public volumen()F 
.limit stack 4
.limit locals 4
   aload_0
   invokespecial Esfera/volumen()F

   new Esfera
   dup 
   aload_0
   getfield EsferaHueca/radioInt F 
   invokespecial Esfera/<init>(F)V
   invokevirtual Esfera/volumen()F 
   fsub
   freturn
.end method
   
   
   
   
 


  

   
   
   
   










