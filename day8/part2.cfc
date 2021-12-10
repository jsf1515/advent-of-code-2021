component {

    function run(){

        // paterns for each of the 10 digits.  Sort each array element alphabetically
        var patterns = [
            "cagedb",
            "ab",
            "gcdfa",
            "fbcad",
            "eafb",
            "cdfbe",
            "cdfgeb",
            "dab",
            "acedgfb",
            "cefabd"
        ];

        var inputs = fileRead("./inputs_test.txt")
            .listToArray(chr(10))
            .map((element) => {
                return element
                    .listToArray(" | ", false, true)[2]
                    .replace(" ", ",", "all");
            })
            
        print.line(patterns);
        print.line(inputs);

    }

}