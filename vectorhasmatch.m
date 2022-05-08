function match = vectorhasmatch1(x)
nvec = length(x); % Determines no. of elements in x.
% How eneter loop to compare.
match = false;
for i1 = 1:nvec-1
    for i2 = i1 + 1:nvec
        if x(1,i1) == x(1,i2)
            match = true;
        end
    end
end


