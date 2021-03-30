function I = cSimpson(f,a,b,m)
  
  #composite Simpson 1/3 rule.
  format long
  h = (b-a)/(2*m);
  x1 = linspace(a+h,b-h,m);
  x2 = linspace(a+2*h,b-2*h,m-1);
  fprintf('\nLONG FORMAT\n');
  I=h/3*(f(a)+f(b)+4*sum(f(x1))+2*sum(f(x2)))
  fprintf('SHORT FORMAT\n');
  format short
  I=h/3*(f(a)+f(b)+4*sum(f(x1))+2*sum(f(x2)))
  fprintf('\n');
endfunction

  # Example:
  # I = cSimpson(@(x)log(x),1,2,4)
  
  # WE GET:
  # LONG FORMAT
  # I = 3.862920434663129e-01
  # SHORT FORMAT
  # I = 0.38629
