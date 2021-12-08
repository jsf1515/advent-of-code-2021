component {

    function run(){

        var patternMatch = ["cf","bcdf","acf","abcdefg"];

        var inputs = fileRead("./inputs_test.txt")
            .listToArray(chr(10))

        print.line(inputs);
    }

}