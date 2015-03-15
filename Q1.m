% A= [2 -2 3 -3 1 0 0; -5 5 -2 2 0 1 0; -2 2 7 -7 0 0 1;]; 
A=[2 3 1 0 0; -5 -2 0 1 0; -2 7 0 0 1;]; 
% c=[-1 1 1 -1 0 0 0]; 
c=[-1 1 0 0 0];

b= [10 -2 8]'; 

[m,n]=size(A); 

count=0; 

% sol=zeros(7,35); 
sol=zeros(5,10); 

Jmin=1000; 

for i=1:n-2
    for j=i+1:n-1
        for k=j+1:n
            
            count=count+1; 
            B=[A(:,i) A(:,j) A(:,k)]; 
            
            s=B\b; 
            
             sol(i,count)=s(1); 
             sol(j,count)=s(2); 
             sol(k,count)=s(3); 
                  
   
            if(isfinite(dot(sol(:,count),sol(:,count))))
            
              if(min(sol(:,count)>0))
         
               J=dot(c,sol(:,count));  
               
               
               if (J<Jmin)
                   Jmin=J; 
                   
                   solution=sol(:,count); 
                   
               end
               
              end
            end
        end
    end
end



count; %checked it works out

