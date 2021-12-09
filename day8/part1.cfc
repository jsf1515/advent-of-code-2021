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
                // break the strings apart into an array and return the 2nd part
                // get rid of space delimiters and use commas
                return element
                    .listToArray(" | ", false, true)[2]
                    .replace(" ", ",", "all")
            })
            .toList( /* I just want a single big string of all the inputs */ )
            .listToArray( /* now put it back into an array so we can run some functions */ )
            .filter((element) => {
                // just give me the elements that have a length thats in the pattern match array
                return patternMatch.contains(element.len()) > 0
            })
            .len()

        print.line(inputs);
    }

}