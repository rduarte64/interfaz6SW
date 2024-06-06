.class public TestFiguras
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 5
.limit locals 5

  new Circulo
  dup
  ldc 5.0
  invokespecial Circulo/<init>(F)V
  invokevirtual  Circulo/area()F
  jsr PrintMe   
  
  new Esfera
  dup 
  ldc 5.0
  invokespecial Esfera/<init>(F)V
  invokevirtual Esfera/volumen()F 
  jsr PrintMe 

  new EsferaHueca
  dup 
  ldc 5.0
  ldc 2.5
  invokespecial EsferaHueca/<init>(FF)V 
  invokevirtual EsferaHueca/volumen()F 
  jsr PrintMe
  
  new Cilindro
  dup
  ldc 5.0
  ldc 10.00
  invokespecial Cilindro/<init>(FF)V
  astore_1
  aload_1
  invokevirtual Cilindro/area()F 
  jsr PrintMe  
  aload_1
  invokevirtual Cilindro/volumen()F
    jsr PrintMe  

  return
  
; define the PrintMe subroutine ...
PrintMe:       
    astore_0    ; store return-address in local variable 0
    ; call System.out.println()
    getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
    invokevirtual java/io/PrintStream/println(F)V 

    ret 0 ; return to the return-address in local variable 0  
  
  
.end method
