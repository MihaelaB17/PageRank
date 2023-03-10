function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina
    f=fopen(nume,"r");
    N=fscanf(f,"%d",1);
    K=zeros(N);
    U=ones(N,1);
    R=ones(N,1);
    A=zeros(N);
    for j=1:N
        i=fscanf(f,"%d",1);
        nr=fscanf(f,"%d",1);
        K(i,i)=nr;
        for k=1:nr
            v=fscanf(f,"%d",1);
            A(i,v)=1;
        end
    end
    fclose(f);
    
    M=(inv(K)*A)';
    d=str2double(d);
    eps=str2double(eps);
    R=R/N;
    R1=d*M*R+(1-d)/N*U;
    while norm(R1-R)>=eps
        R=R1;
        R1=d*M*R+(1-d)/N*U;
    end