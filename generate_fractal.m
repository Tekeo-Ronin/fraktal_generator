function [x, y] = generate_fractal(n)
	f1 = [0 0 0; 0 0.16 0; 0 0 1];
	f2 = [0.85 0.04 0; -0.04 0.85 1.6; 0 0 1];
	f3 = [0.2 -0.26 0; 0.23 0.22 1.6; 0 0 1];
	f4 = [-0.15 0.28 0; 0.26 0.24 0.44; 0 0 1];

	x = zeros(n, 1);
	y = zeros(n, 1);
	x(1) = 0;
	y(1) = 0;

	for i = 2:n
    r = rand();
    if r < 0.01
	    f = f1;
    elseif r < 0.86
      f = f2;
    elseif r < 0.93
      f = f3;
    else
      f = f4;
    end

    point = [x(i-1), y(i-1), 1] * f';
    x(i) = point(1);
    y(i) = point(2);

	end
end
