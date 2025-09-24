walker TempConverter {
    has temp_c: float;

    can start with entry {
        let temp_f = (self.temp_c * 9/5) + 32;
        print(self.temp_c, " °C = ", temp_f, " °F");
    }
}

with entry:__main__ {
    root spawn TempConverter(temp_c=36);  # Pass the value correctly
}
