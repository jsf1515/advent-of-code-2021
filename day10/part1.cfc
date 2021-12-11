component {

    function run(){
        var inputs = fileRead("./inputs_test.txt").listToArray(chr(10));

        print.line("11111" & inputs[1])
    }

}