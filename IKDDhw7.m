function IKDDhw7(file, prob)
    clc;
    close;
    fid = fopen(file, 'r');
    node = textscan(fid,'%d %d');
    fclose(fid);

    global p;
    global target;
    global result;

    p = prob;
    target=node{1,2};


    result = tabulate(node{1});
    leng = length(result);
    result(1,3)=0;
    for i = 2 : leng
        result(i,3)=result(i-1,3)+result(i-1,2);
    end
    set=[];
    asnswer=0;
    for i=1:10
        i
        influence=zeros(1,leng);
        for j = 1 : leng
            k=seed([set,j]);
                influence(j)  = k;
        end
        for k=1:10
            [a,b]=max(influence);
            if  sum(ismember(set,b))==0
                set=[set,b];
                break;
            else
                influence(b)=0;
            end
        end
        if i==10
            answer=max(influence);
        end
    end
    set=sort(set);
    set=set-1
    answer
end