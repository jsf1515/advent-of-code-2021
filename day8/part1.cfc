component {

    function run(){

        // get the lengths of the 4 unique patterns
        var patternMatch = ["cf","bcdf","acf","abcdefg"].map((element) => {
            return element.len()
        });

        //var inputs = fileRead("./inputs_test.txt")
        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((element) => {
                //break the strings apart into an array and return the 2nd part
                return element
                    .listToArray(" | ", false, true)[2]
                    .replace(" ", ",", "all")
            })
            .toList( /* I just want a single big string of all the inputs */ )
            .listToArray( /* now put it back into an array so we can run some functions */ )
            .map((element) => {
                // is the lenght of this element in the pattern match length array???
                return patternMatch.contains(element.len()) > 0 ? true : false;
            })
            .filter((element) => {
                // just give me the "true" ones
                return element == true;
            })
            .len()

        print.line(inputs);
    }

}