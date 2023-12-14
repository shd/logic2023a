type angle = record
     case radians : boolean of
         true: (rads: real);
         false: (degs: integer);
     end;

procedure print_angle (v: angle);
begin
    if v.radians then 
        writeln(v.rads : 10 : 8, ' radians (', v.rads / pi * 180 : 10 : 8, ' degrees)')
    else writeln(v.degs, ' degrees (', v.degs * pi / 180 : 10 : 8, ' radians)')
end;

var ipc: angle;
begin
    ipc.radians := false; ipc.degs := 180; print_angle (ipc);
    ipc.radians := true;  ipc.rads := pi;  print_angle (ipc);
    ipc.rads := ipc.rads * 100000000;      print_angle (ipc);
end.