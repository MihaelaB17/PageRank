function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
    f=fopen(nume,"r");
    N=fscanf(f,"%d",1);
    for j=1:N
        i=fscanf(f,"%d",1);
        nr=fscanf(f,"%d",1);
        for k=1:nr
            v=fscanf(f,"%d",1);
        end
    end
    val1=fscanf(f,"%f",1);
    val2=fscanf(f,"%f",1);
    fclose(f);
    iesire=strcat(nume,".out");
    f1=fopen(iesire,"w");
    R1=Iterative(nume,d,eps);
    fprintf(f1,"%d\n",N);
    fprintf(f1,"%.6f\n",R1);
    R2=Algebraic(nume,d);
    fprintf(f1,"\n");
    fprintf(f1,"%.6f\n",R2);
    fprintf(f1,"\n");
    PR1=sort(R2,"descend");
    for i=1:N
        fprintf(f1,"%d ",i);
        for j=1:N
            if PR1(i)==R2(j)
                fprintf(f1,"%d ",j);
            end
        end
        fprintf(f1,"%.6f\n",Apartenenta(PR1(i),val1,val2));
    end
    fclose(f1);