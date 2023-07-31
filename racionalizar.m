function y = racionalizar(varargin)
switch nargin
    case 2
        y=varargin{1}*conj(varargin{2})/varargin{2}*conj(varargin{2});
    case 3
        r=varargin{1};
        p=varargin{2};
        x=varargin{3};
        pw=zeros(1,length(p));pw(1)=1;
        for i=2:length(r)
            if p(i)==p(i-1)
                pw(i)=pw(i-1)+1;
            else
                pw(i)=1;
            end
        end
        y=ones(1,length(pw))*x;
        for i=1:length(pw)
            if imag(p(i))==0
                y(i)=r(i)/(x-p(i))^pw(i);
            else
                y(i)=(r(i)*(x+real(p(i))-imag(p(i)))^pw(i))/((x+real(p(i)))^2+imag(p(i))^2)^pw(i);
            end
        end
    otherwise
        disp("error")
end
end
