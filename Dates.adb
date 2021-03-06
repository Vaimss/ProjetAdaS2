with ada.text_io, gnat.calendar.time_io, ANSI;
use  ada.text_io, gnat.calendar.time_io, ANSI;

Package body Dates is

	Procedure Get (date: out time) is
		s: string (1..11);
		k: integer;
	begin
		loop
			begin
				get_line (s, k);
				date := (if k = 0 then Gnat.calendar.No_Time else value(s(1..k)));
				exit;
			exception
				when others => 
					moveCursor (Up); restoreCursor; clearLine;
					put_line ("Erreur de saisie. Veuillez recommencer.");
					hideInput; delay 1.0; showInput;
					restoreCursor; clearLine;
			end;
		end loop;
	end Get;

	Procedure Put (date: in  time) is
	begin
		put_time(date, European_Date);
	end Put;

end Dates;
