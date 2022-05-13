x = 'I am taking my final exam.';
rx = myflip(x);
fprintf(rx)
function rx = myflip(x)
    l = length(x);
    rx = '';
    for i=l:-1:1
    rx = append(rx, x(i));
    end
end