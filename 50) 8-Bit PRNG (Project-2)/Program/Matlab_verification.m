clc;
clear;
total_steps = 70000;
cycle_len = 65536;
pairs = zeros(cycle_len, 2);  % Store first cycle
filename = 'prng_pairs_output.txt'; % Open file for writing
fid = fopen(filename, 'w');
fprintf(fid, 'Step\tX\tY\tNote\n');
fprintf('Generating %d steps and saving to %s...\n', total_steps, filename);
for counter = 0:total_steps-1
    hi = bitshift(counter, -8);
    lo = bitand(counter, 255);
    x = mod(hi + lo, 256);
    y = mod(x + lo, 256);
    note = "";
    if counter < cycle_len
        pairs(counter+1, :) = [x, y];
    else
        orig = pairs(mod(counter, cycle_len)+1, :);
        if x == orig(1) && y == orig(2)
            note = "? Repeats";
        else
            fprintf('? Mismatch at step %d. Expected [%d, %d], Got [%d, %d]\n', ...
                counter, orig(1), orig(2), x, y);
            fprintf(fid, '? Mismatch at step %d. Expected [%d, %d], Got [%d, %d]\n', ...
                counter, orig(1), orig(2), x, y);
            fclose(fid);
            return;
        end
    end
    fprintf(fid, '%5d\t%3d\t%3d\t%s\n', counter, x, y, note);
end
fprintf(fid, '\n? Full cycle confirmed! Steps 65536 to 69999 match steps 0 to 4463.\n');
fclose(fid);
fprintf('? Done! Output saved to "%s"\n', filename);
