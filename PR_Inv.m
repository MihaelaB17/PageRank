function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare
    [~,c]=size(A);
    R=zeros(c);
    U=A;
    Q=zeros(c);
    for i=1:c
        for j=1:i-1
            U(:,i)=U(:,i)-dot(U(:,j),A(:,i))/dot(U(:,j),U(:,j))*U(:,j);
        end
    end
    for i=1:c
        Q(:,i)=1/norm(U(:,i))*U(:,i);
    end
    
    for i=1:c
        for j=i:c
            R(i,j)=dot(A(:,j),Q(:,i));
        end
    end
    B=inv(R)*Q';

