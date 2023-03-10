Pentru functia PageRank.m am citit mai intai datele si am retinut valorile ce vor fi utilizate ulterior, in 
variabilele N, val1, val2. Am realizat fisierul de iesire concatenand la variabila nume ".out".
Am retinut in variabila R1 rezultat de la iterative si in R2 rezultatul de la algebraic si le am afisat 
in fisierul de iesire. Ulterior am sortat datele din R2 si le am salvat in PR1 si am afisat in fisierul 
.out indicii corespunzatori cerintei, iar apoi gradul de apartenenta.

Cerinta 1:
Pentru functia Iterative.m am citit mai intai datele din fisier si am initializat
o matrice diagonala K, ce va contine gradele nodurilor, U si R vectori coloana si A
care este matricea de adiacenta.
Am parcurs datele si am realizat matricile A si K. Am calculat matricea M ca fiind 
transpusa produsului dintre inversa lui K si A. 
Transform d si eps din char in float si initializez R si R1. Dupa aceea se intra intr-un 
ciclu while pana cand norma diferentei este mai mica decat eps si returnez R

Cerinta 2:
Pentru functia PR_Inv.m am plecat de la algoritmul Gram-Schmidt utilizat la ALGAED si am
incercat sa il implementez in MATLAB, ortonormand mai intai baza vormata din coloanele matricii A
(calculez mai intai matricea U), vectorii ortonormati fiind stocati in matricea Q pe coloanele aceasteia.
Dupa aceea am realizat matricea superior triunghiulara R ale carei elemente sunt niste produse scalare intre 
coloanele matricei A si coloanele matricei Q. Astfel am obtinut descompunerea Q*R a lui A si cum transpusa 
lui Q este egala cu inversa lui Q atunci obtinem relatia B=inversa lui R * traspusa lui Q, B reprezentand 
inversa lui A.
Pentru functia Algebraic.m am citit datele din fisier si le am stocat, am realizat matricea de adiacenta A
si am calculat matricea M la fel ca la functia Iterative.m. Vectorul coloana R de care avem nevoie va rezulta
din formula utilizata(in formula de pe site am desfacut parantezele si am separat factorii ce contin R, l am dat
factor comun si am inmultit cu inversa) in care ne ajutam si de functia PR_Inv.m prntru a calcula inversa matricei I-d*M

Cerinta 3:
Stim ca o functie este continua daca limitele laterale in punctele respective sunt egale cu valoarea 
functiei in acel punct si de aici scoatem relatiile a*val1+b=0 si a*val2+b=1 =>a*val1=-b si a*val2-1=-b.
Deci a*val1=a*val2-1 => a*(val1-val2)=-1 => a=-1/(val1-val2), iar -b=a*val1 => b=-a*val1. Astfel aflate numerele 
a si b vom crea mai multe cazuri in functie de apartenenta lu x la intervale si vom returna rezultatul corespunzator
