function d = db(a)
    d = 20*log10(a);
end

function out = par(xs)
    sum = 0;
    prod = 1;
    for i=1:length(xs)
        sum = sum + 1/xs(i);
        %prod = prod*xs(i);
    end
    out = 1/sum;
end

function out = xpand(func)
    [num,den] = numden(func);    
    out = num/den;
end

function out = xpand_mat(func)
    sz = size(func);
    for i=1:sz(1)
        for j=1:sz(2)
            [nu,de] = numden(func(i,j));   
            out(i,j) = nu/de;            
        end
    end
end