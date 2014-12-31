function output = seed( arg)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

global result;
global point;
    length=size(arg);
    length=length(2);
    output=0.0;
    for j=1:1000
        point=zeros(1,size(result,1));
        for i=1:length
            point(arg(i))=1;
        end
        
            seedBFS(arg);
            output=output+sum(point);
    end
        output=output/1000;
end

