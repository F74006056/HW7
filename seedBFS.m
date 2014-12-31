function seedBFS( arg)
%UNTITLED4 Summary of this function goes here
    %   Detailed explanation goes here
    
global p;
global target;
global result;
global point;
    argg=zeros(1,50000);
    num=1;
    for j=1:size(arg,2);
        for i=1:result(arg(j),2)
            if point(target(result(arg(j),3)+i)+1)==0
                if p > rand
                    point(target(result(arg(j),3)+i)+1)=1;
                    argg(num)=target(result(arg(j),3)+i)+1;
                    num=num+1;
                end
            end
        end
    end
    argg=argg(1:num-1);
    if size(argg,2)<0
        seedBFS(argg);
    end
end

