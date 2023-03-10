function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
    f=fopen(nume,"r");
    N=fscanf(f,"%d",1);
    A=zeros(N);
    I=eye(N);
    U=ones(N,1);
    K=zeros(N);
    for j=1:N
        i=fscanf(f,"%d",1);
        nr=fscanf(f,"%d",1);
        K(i,i)=nr;
        for k=1:nr
            v=fscanf(f,"%d",1);
            A(i,v)=1;
        end
    end
    d=str2double(d);
    M=(inv(K)*A)';
    R=PR_Inv(I-d*M)*(1-d)/N*U;
    fclose(f);